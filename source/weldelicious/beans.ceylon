import javax.inject {
    inject
}
import javax.enterprise.context {
    dependent
}

/*
   Note: all beans are explicitly annotated 'dependent',
   because 'bean-discovery-mode' is set to "annotated".

   This allows Weld to function correctly when the example
   is assembled using 'ceylon fat-jar'. If assembly to as a
   fat jar is not required, the 'dependent' annotations may
   be removed, and 'bean-discovery-mode' set to "all".
 */

dependent class Sender {
    Receiver receiver;
    Receiver fancyReceiver;
    
    inject shared new (Receiver receiver, fancy Receiver fancyReceiver) {
        this.fancyReceiver = fancyReceiver;
        this.receiver = receiver;
    }
    
    shared void send() {
        receiver.accept("Hello!");
        fancyReceiver.accept("Hello!");
    }
}

interface Receiver {
    shared formal void accept(String message);
}

dependent class PrintingReceiver() satisfies Receiver {
    accept = print;
}

fancy dependent class FancyReceiver() satisfies Receiver {
    accept(String message)
            => print(message + " \{BALLOON}\{PARTY POPPER}");
}