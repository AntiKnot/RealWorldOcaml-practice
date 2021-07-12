open Base

module type X_int = sig val x : int end;;

module Increment (M : X_int) : X_int = struct
    let x = M.x + 1
end
;;

module Three = struct let x = 3 end;;
module Four = Increment(Three);;
Four.x - Three.x;;

module Three_and_more = struct
    let x = 3
    let y = "three"
  end
  ;;
  
module Four = Increment(Three_and_more);;

module Three_and_more = struct
  let x = 3
  let y = "three"
end
;;

module Four = Increment(Three_and_more);;
