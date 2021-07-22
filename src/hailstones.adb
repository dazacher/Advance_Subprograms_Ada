--------------------------------------------------------------------
-- HAILSTONES
-- Purpose:
-- Demonstrate subprograms in Ada by using the hailstone code kata. The program should achieve
-- two goals.
-- 1. Generate a sequence for the value 27. Print out the results,
--    and visually validate the sequence has 112 steps.
--    The sequence should start with with 27, 82, 41, 124 and
--    end with 8, 4, 2, 1
-- 2. Find the longest hailstone sequence for the positive values
--    below 100,000
-- The hailstone mathematical sequence adheres to the following rules
-- 1. if n =1 the Sequence is over
-- 2. if n is even then divide n by 2
-- 3. if n is odd then the next value of n = (n *3) + 1
-- References:
-- http://rosettacode.org/wiki/Hailstone_sequence
-- https://en.wikipedia.org/wiki/Collatz_conjecture
--------------------------------------------------------------------
with Ada.Text_IO;
with Hail;

procedure Hailstones is
   package TIO renames Ada.Text_IO;
   package IIO is new TIO.Integer_IO (Integer);


   --------------------------------------------------------------------
   Test_Value : Positive := 27;
   Length : Positive;
   Longest_Value, Longest_Length : Positive;

begin

   TIO.Put_Line("Starting with value: " & Positive'Image(Test_Value));
   if (Hail.Next_Stone(Test_Value)) then
      TIO.Put(" next value is: ");
      IIO.Put(Test_Value);TIO.New_Line;
   end if;
   Length := Hail.Generate_Sequence (Output_Enabled => True, Start_Value => Test_Value);
   Hail.Find_Longest_Sequence(Longest_Value, Longest_Length);
   Hail.Print_Longest_Sequence( Value => Longest_Value,
   Upper_Limit => Hail.Get_Max_Number,
   Longest => Longest_Length);
end Hailstones;
