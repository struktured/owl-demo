open Owl
module M = Dense.Real

let () =
let h = Plot.create "norm-vs-log.png" in
Plot.set_title h "normal vs log normal distribution";
let x = M.gaussian 100 1 in
let y = M.(abs x |> log) in
Plot.scatter ~h x y;
Plot.output h




