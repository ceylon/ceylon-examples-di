native("jvm")
module weldelicious "1.0.0" {
    import maven:org.jboss.weld.se:"weld-se" "2.3.1.Final";
    module maven:org.jboss.weld.se:"weld-se" "2.3.1.Final" {
        import maven:javax.inject:"javax.inject" "1";
    }
}
