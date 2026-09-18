pragma Ada_2022;
with Ada.Unchecked_Deallocation;
package body UDealloc_Demo is
   procedure Free is new Ada.Unchecked_Deallocation (Integer, Int_Access);
   function Alloc_Write_Free (Value : Integer) return Boolean is
      P : Int_Access := new Integer'(Value);
   begin
      if P.all /= Value then
         Free (P);
         return False;
      end if;
      Free (P);
      return P = null;
   end Alloc_Write_Free;
end UDealloc_Demo;
