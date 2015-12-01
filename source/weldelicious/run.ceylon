import ceylon.interop.java {
    type = javaClass
}

import org.jboss.weld.environment.se {
    Weld
}

shared void run() {
    
    value container = Weld().initialize();
    
    value sender 
            = container.select(type<Sender>())
                .get();
    
    sender.send();
    
    container.shutdown();
    
}
