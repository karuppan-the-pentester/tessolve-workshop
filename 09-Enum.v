class SimpleClass;
  typedef enum logic [1:0] { RED = 2'b00, GREEN = 2'b01, BLUE = 2'b10 } Color;
  Color myColor;

  // Constructor
  function new();
    myColor = Color::RED;
  endfunction

  // Display function using built-in functions
  function void display();
    $display("Current Color: %s", myColor.name());
    $display("Color value: %0h", myColor);
  endfunction
endclass

module test;
  initial begin
    // Create an instance of the class
    SimpleClass obj = new;

    // Display the initial color
    obj.display();

    // Change the color
    obj.myColor = SimpleClass::Color::GREEN;

    // Display the updated color
    obj.display();
  end
endmodule
class SimpleClass;
  typedef enum logic [1:0] { RED = 2'b00, GREEN = 2'b01, BLUE = 2'b10 } Color;
  Color myColor;

  // Constructor
  function new();
    myColor = Color::RED;
  endfunction

  // Display function using built-in functions
  function void display();
    $display("Current Color: %s", myColor.name());
    $display("Color value: %0h", myColor);
  endfunction
endclass

module test;
  initial begin
    // Create an instance of the class
    SimpleClass obj = new;

    // Display the initial color
    obj.display();

    // Change the color
    obj.myColor = SimpleClass::Color::GREEN;

    // Display the updated color
    obj.display();
  end
endmodule
