WITH Text_IO; USE  Text_IO;
PACKAGE BODY CritterPak IS  --  Critter implementation
   FUNCTION GetMood(Crit : Critter) Return Integer IS
   BEGIN
      RETURN Crit.Hunger + Crit.Boredom;
   END GetMood;
   PROCEDURE PassTime(Crit : in out Critter; SomeTime : Integer := 1) IS
   BEGIN
      Crit.Hunger := Crit.Hunger + SomeTime;
      Crit.Boredom := Crit.Boredom + SomeTime;
   END PassTime;
   PROCEDURE Talk(Crit : in out critter) IS
   Mood : constant integer := GetMood(Crit);
   BEGIN
      Put("I'm a Critter and I feel ");
      CASE Mood IS
         WHEN 0..5 => Put_Line("Happy");
         WHEN 6..10 => Put_Line("Okay");
         WHEN 11..15 => Put_Line("Frustrated");
         when others => Put_line("Angry");
      END CASE;
      PassTime(Crit);
   END Talk;
   PROCEDURE Eat(Crit : in out Critter; Food : Integer := 4) IS
   BEGIN
      Put_Line("Burrrp");
      Crit.Hunger := Crit.Hunger - Food;
      IF Crit.Hunger < 0 THEN
         Crit.Hunger := 0;
      END IF;
      PassTime(Crit);
   END Eat;
   PROCEDURE Play(Crit : in out Critter; Fun : Integer := 4) IS
   BEGIN
      Put_Line("Wheee");
      Crit.Boredom := Crit.Boredom - Fun;
      IF Crit.Boredom < 0 THEN
         Crit.Boredom := 0;
      END IF;
      PassTime(Crit);
   END Play;
END CritterPak;
