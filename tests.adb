pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with UDealloc_Demo;
procedure Tests is
begin
   Assert (UDealloc_Demo.Alloc_Write_Free (42));
   Put_Line ("PASS Unchecked_Deallocation Free sets access to null");
   Put_Line ("All Unchecked_Deallocation topic tests passed.");
end Tests;
