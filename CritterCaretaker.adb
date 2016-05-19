WITH CritterPak; USE CritterPak; WITH Text_IO; USE Text_IO;
with Ada.Containers.Vectors; use Ada.Containers;
PROCEDURE CritterCaretaker IS
Farm_Size : constant := 5;
subtype Farm_Type is Positive range 1 .. Farm_Size;
package Critter_Vectors is new Vectors(Farm_Type, Critter);
Numbers : Critter_Vectors.Vector;
Cursor : Critter_Vectors.Cursor;
Crit : Critter;
Choice : Character;
PROCEDURE ViewCondition IS
BEGIN

Put_Line("==========View==========");
Cursor := Critter_Vectors.First(Numbers);

while Critter_Vectors.Has_Element(Cursor) 
loop
Crit :=Critter_Vectors.Element(Cursor);
Talk(Crit);
Critter_Vectors.Next(Cursor);
end loop;
END ViewCondition;

PROCEDURE RaiseCritter IS
BEGIN
Put_Line("Raise successful");
Critter_Vectors.Append(Numbers,Crit);
END RaiseCritter;

PROCEDURE ChooseCritter IS
BEGIN
Put_Line("Choose");
END ChooseCritter;

PROCEDURE Dead IS
BEGIN
Put_Line("Dead");
END Dead;


BEGIN
Put_Line("Welcome to Critter Caretaker"); New_Line;-- Talk(Crit); -- Critter says Hi
LOOP
Put_line("Type one character for what you would like to do");
Put("V.iew conditions, R.aise another critter, C.hoose critter to interact, view D.ead number you have caused or Q.uit");
New_Line;Get( Choice ); Skip_Line;
CASE choice IS
        when 'V' | 'v' => ViewCondition;
        when 'R' | 'r' => RaiseCritter;
        when 'C' | 'c' => ChooseCritter;
        when 'Q' | 'q' => Exit;
         when 'D' | 'd' => Dead;
	when others    => Put_line("bullshit");
	Skip_Line;Skip_Line;Skip_Line;
END  CASE;
   END LOOP;
Put("Bye-bye. Thanks for caring for us."); END CritterCaretaker;

