WITH CritterPak; USE CritterPak; WITH Text_IO; USE Text_IO;
PROCEDURE CritterCaretaker IS
Farm_Size : constant := 5;
subtype Farm_Type is Positive range 1 .. Farm_Size;
type Critter_Array is array (Farm_Type) of  Critter;
Critters : Critter_Array;
Choice : Character;
PROCEDURE ViewCondition IS
BEGIN
Put_Line("View");
for Count in 1..5
loop

end loop;
END ViewCondition;

PROCEDURE RaiseCritter IS
BEGIN
Put_Line("Raise");
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
Put("Bye-bye. Thanks for caring for me."); END CritterCaretaker;

