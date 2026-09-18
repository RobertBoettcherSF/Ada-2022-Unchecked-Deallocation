--  Ada 2022 topic: Ada.Unchecked_Deallocation.
pragma Ada_2022;
package UDealloc_Demo is
   type Int_Access is access Integer;
   --  Allocate, write, Free; return True if pointer is null after Free.
   function Alloc_Write_Free (Value : Integer) return Boolean;
end UDealloc_Demo;
