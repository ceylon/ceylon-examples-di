native("jvm")
module weldelicious "1.0.0" {
    import maven:org.jboss.weld.se:"weld-se-shaded" "3.0.0.Final";
    module maven:org.jboss.weld.se:"weld-se-shaded" "3.0.0.Final" {
        import maven:javax.inject:"javax.inject" "1";
    }
}
