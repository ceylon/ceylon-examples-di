import ceylon.interop.java {
    type = javaClass
}
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
            bind(type<Receiver>())
                    .to(type<PrintingReceiver>());
            bind(type<Receiver>())
                    .annotatedWith(Fancy())
                    .to(type<FancyReceiver>());
        }
    });

shared void run() {
    value sender = injector.getInstance(type<Sender>());
    sender.send();
}