import org.jboss.weld.environment.se {
    Weld
}

shared void run() {
    value container = Weld().initialize();

    value sender
            = container.select(`Sender`)
                .get();

    sender.send();

    container.shutdown();
}
