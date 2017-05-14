function things(i, s, d){
  // Declare second integer, double, and String variables.
      let int = 4;
      let float = 4.0;
      let string = "is the best place to learn and practice coding!";
      // Read and save an integer, double, and String to your variables.

      // Print the sum of both integer variables on a new line.
      console.log(int + i);
      // Print the sum of the double variables on a new line.
      console.log((float + d).toFixed(1));
      // Concatenate and print the String variables on a new line
      // The 's' variable above should be printed first.
      console.log(s + string);
}

things(4, "Hackerrank ", 4.0);
things(3, "is my favorite platform!", 2.8);
