/*
 */

func catAndMouse(x: Int, y: Int, z: Int) -> String {
  let distanceACat = abs(z - x)
  let distanceBCat = abs(z - y)

  if distanceACat > distanceBCat {
    return "Cat B"
  } else if distanceACat < distanceBCat {
    return "Cat A"
  } else {
    return "Mouse C{-truncated-}"
  }

}
