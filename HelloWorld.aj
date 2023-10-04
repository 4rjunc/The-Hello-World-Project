public aspect HelloWorldAspect {
    pointcut mainMethod(): execution(public static void Main.main(String[]));

    before(): mainMethod() {
        System.out.println("Hello, World!");
    }
}
