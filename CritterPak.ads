PACKAGE CritterPak IS -- package definition - defines a new type, Critter
   TYPE Critter IS PRIVATE;
   PROCEDURE Eat (Crit : IN OUT Critter; Food : Integer := 4);-- public
   PROCEDURE Talk (Crit : IN OUT Critter);    -- subprogram definitions
   PROCEDURE Play (Crit : IN OUT Critter; fun : integer := 4);
PRIVATE
   TYPE Critter IS
RECORD -- Private Critter Data
Hunger : Integer := 0;
Boredom : Integer := 0;
END RECORD;
FUNCTION GetMood(Crit : Critter) return Integer; -- Private subprograms procedure passTime(Crit : in out Critter; SomeTime : Integer := 1);
END CritterPak;
