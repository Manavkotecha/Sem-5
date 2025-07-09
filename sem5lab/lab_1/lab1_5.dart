class MainClass{
   static int counter = 1;
}

class Demo {

  void increment(){
    MainClass.counter = MainClass.counter++;
  }

}

class DemoSub extends Demo {
  void increase(){
    super.increment();
  }

}
void main(){

  Demo demo = new Demo();
  demo.increment();

  DemoSub demoSub = new DemoSub();
  demoSub.increase();


  print(MainClass.counter);

}