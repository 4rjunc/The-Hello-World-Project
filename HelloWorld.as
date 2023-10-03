package {
    import flash.display.Sprite;

    public class HelloWorld extends Sprite {
        public function HelloWorld() {
            var textField:TextField = new TextField();

            textField.text = "Hello, World!";


            addChild(textField);
        }
    }
}
