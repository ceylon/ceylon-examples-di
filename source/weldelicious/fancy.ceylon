import javax.inject { qualifier }

annotation Fancy fancy() => Fancy();
final qualifier annotation class Fancy() 
        satisfies OptionalAnnotation<Fancy> {}