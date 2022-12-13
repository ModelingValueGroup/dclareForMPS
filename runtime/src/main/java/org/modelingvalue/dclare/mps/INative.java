package org.modelingvalue.dclare.mps;

import org.modelingvalue.collections.List;
import org.modelingvalue.dclare.Constant;

public interface INative<O> extends DFeature {

    @SuppressWarnings({"rawtypes", "unchecked"})
    static final Constant<INative, List<IChangeHandler>> ALL_HANDLERS = Constant.of("ALL_HANDLERS", List.of(), n -> {
        return List.of(n.getChangeHandlers());
    });

    void init(DObject parent);

    void exit(DObject parent);

    @SuppressWarnings("rawtypes")
    java.util.List<IChangeHandler> getChangeHandlers();

}
