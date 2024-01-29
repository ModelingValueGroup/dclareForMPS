# Workaround for ForkJoinPool bug

### how does it show?

The dclare engine will suddenly seem to get stuck with all or nearly all CPUs running at full power.
While running blue the numbers will freeze and will not start counting again.
The MPS-UI still works.
When you try to stop the engine it will stay blue and the counters will not go to 0 as they normally do.
When you subsequently try to start the engine again nothing will happen.
After you have done this once or twice the MPS-UI will completely freeze.
A *Forced Quit* is the only way out.

### where does it show?

We have clearly and regularly detected this bug under the following circumstances:

- on **MacOS**
- on **Apple Silicon** (Mx processor)
- using **Sonoma**
- using JDK17 (which means MPS 2022.\* and probably MPS 2023.\*)

Other platforms do not seem to have be vulnarable, at least not as much.
There were suspicious incidents on Windows, but we could not analyse them enough.

### what is the cause?

We tracked it down to a bug in the java ForkJoinPool.
This has been identified in JDK17 and fixed in JDK19 and onward.
Since MPS is using its build in JDK17 (called jbr), MPS is vulnarable for this bug.
That it only seems to happen on MacOS might be a result of the special scheduling logic of the ARM cores, but this is speculation.
For some reason all the ForkJoinPool threads get into an endless loop in the method ```java.util.concurrent.ForkJoinPool$WorkQueue.helpComplete()```.

### the workaround

You can circumvent this bug in two ways:

##### method 1

- go to `Settings` - `Other Setting` - `Dclare`
- switch on `Run Sequential`

This method is easy to apply but has the disadvantage of slowing down dclare considerably.
It is an easy way to check if you are stung by this bug though.

##### method 2

- make sure you have a JDK19 or newer installed on your machine
- start MPS, but do **NOT** start dclare yet
- hit the `Shift`-key 2 times
- a dialog will appear
- type `choose`
- click the entry `Choose Boot Java Runtime for the IDE...`
- a dialog will appear that lets you select the JDK that MPS will use to boot
- in the `New:` field select `Add Custom Runtime...`
- select the JDK19 (or newer) that you have on your machine
- click `OK`
- click `Restart now`
- MPS will restart with the newer JDK and you will be safe from this bug
- NB: be sure to switch off `Run Sequential`!

This method is more work and has the disadvantage of slightly downgrading the UI of MPS in minor details.
This is because you are now using a vanilla JDK and not a jbr. 
Jetbrains implements certain custom changes in their jbr which are used by the workbenches to polish the UI.
These changes are not available anymore and you can see that in certain UI details.
We have not noted any significant disadvantages yet.
