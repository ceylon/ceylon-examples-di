import com.google.inject {
    AbstractModule,
    Guice {
        createInjector
    },
    Injector
}

Injector injector
        = createInjector(
    object extends AbstractModule() {
        shared actual void configure() {
            bind(`Receiver`)
                .to(`PrintingReceiver`);
            bind(`Receiver`).annotatedWith(Fancy())
                .to(`FancyReceiver`);
        }
    });

shared void run()
        => injector.getInstance(`Sender`).send();