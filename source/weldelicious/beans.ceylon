import javax.inject {
    inject
}

class Sender {
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

class PrintingReceiver() satisfies Receiver {
    accept = print;
}

fancy class FancyReceiver() satisfies Receiver {
    accept(String message)
            => print(message + " \{BALLOON}\{PARTY POPPER}");
}