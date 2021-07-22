package Hail is
   function Get_Max_Number return Positive is (100_000);
   function Generate_Sequence
     (Output_Enabled : Boolean := False;
      Start_Value    : Positive) return Positive;
   procedure Find_Longest_Sequence
     (Longest_Value, Longest_Length : out Positive);
   procedure Print_Longest_Sequence (Value, Upper_Limit, Longest : Positive);
   procedure Print_Counter;
   function Next_Stone
     (This_Number : in out Positive) return Boolean;
end Hail;
