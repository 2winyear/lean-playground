import Lake
open Lake DSL

package "playground" where
  -- add package configuration options here

lean_lib «Playground» where
  -- add library configuration options here

@[default_target]
lean_exe "playground" where
  root := `Main
