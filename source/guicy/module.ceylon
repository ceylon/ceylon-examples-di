native("jvm") 
module guicy "1.0.0" {
    import maven:com.google.inject:"guice" "4.0";
    module maven:com.google.inject:"guice" "4.0" {
        import maven:javax.inject:"javax.inject" "1";
    }
}
