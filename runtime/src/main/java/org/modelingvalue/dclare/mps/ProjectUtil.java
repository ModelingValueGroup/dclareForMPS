//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2021 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
//                                                                                                                     ~
// Licensed under the GNU Lesser General Public License v3.0 (the 'License'). You may not use this file except in      ~
// compliance with the License. You may obtain a copy of the License at: https://choosealicense.com/licenses/lgpl-3.0  ~
// Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on ~
// an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the  ~
// specific language governing permissions and limitations under the License.                                          ~
//                                                                                                                     ~
// Maintainers:                                                                                                        ~
//     Wim Bast, Tom Brus, Ronald Krijgsheld                                                                           ~
// Contributors:                                                                                                       ~
//     Arjan Kok, Carel Bast                                                                                           ~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

package org.modelingvalue.dclare.mps;

import java.awt.Component;
import java.awt.Window;

import com.intellij.ide.DataManager;
import com.intellij.openapi.actionSystem.DataContext;
import com.intellij.openapi.actionSystem.PlatformDataKeys;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.wm.IdeFrame;

import com.intellij.util.ui.UIUtil;
import com.intellij.openapi.wm.ex.WindowManagerEx;

import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.project.MPSProject;

public class ProjectUtil {
	public static Project getProjectFromUI() {
	    // This code is for performance reasons
	    // The method is called very often, so getting data from DataContext
	    // seems to be too time-consuming to use here
	    //
	    // [AS] Loos like this code is not called so frequently anymore. Leaving it here
	    // and using dataContext as a fallback solution for getting project because there
	    // was a number of problems with getting project from currently focused component.
	    Window window = WindowManagerEx.getInstanceEx().getMostRecentFocusedWindow();
	    Component parent = UIUtil.findUltimateParent(window);
	    if (parent instanceof IdeFrame) {
	      Project project = ((IdeFrame) parent).getProject();
	      if (project != null) {
	        return project;
	      }
	    }
	    DataContext dataContext = DataManager.getInstance().getDataContext();
	    return PlatformDataKeys.PROJECT.getData(dataContext);
	  }

	  public static MPSProject getMPSProjectFromUI() {
	    Project ideaProject = getProjectFromUI();
	    return ideaProject != null ? ProjectHelper.fromIdeaProject(ideaProject) : null;
	  }
}
