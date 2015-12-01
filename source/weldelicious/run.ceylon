import ceylon.interop.java {
    type = javaClass
}

import org.jboss.weld.environment.se {
    Weld
}

shared void run() {
    
    value weld = Weld();
    value container = weld.initialize();
    
    value sender 
            = container.instance()
                .select(type<Sender>())
                .get();
    
    sender.send();
    
    weld.shutdown();
    
}