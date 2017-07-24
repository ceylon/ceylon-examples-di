import org.jboss.weld.environment.se {
    Weld
}

Weld weld = Weld();

shared void run() {
    value container = weld.initialize();

    value sender
            = container.instance()
                .select(`Sender`)
                .get();

    sender.send();

    weld.shutdown();
}
