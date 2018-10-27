/*
 Given a time in 12-hour AM/PM format, convert it to military (24-hour) time.

 Note: Midnight is 12:00:00AM on a 12-hour clock, and 00:00:00 on a 24-hour clock. Noon is 12:00:00PM on a 12-hour clock, and 12:00:00 on a 24-hour clock.
 */

import Foundation

// 1st
func timeConversion(s: String) -> String {
  let dateFormatter = DateFormatter()
  dateFormatter.dateFormat = "hh:mm:ssa"

  let date = dateFormatter.date(from: s)
  dateFormatter.dateFormat = "HH:mm:ss"

  let date24 = dateFormatter.string(from: date!)
  return date24
}

//2nd
func timeConversion2(s: String) -> String {
  guard var hh = Int(s.prefix(2)) else { return s }

  hh = (hh % 12) + (s.suffix(2) == "AM" ? 0 : 12)
  let range = s.startIndex..<s.index(s.startIndex, offsetBy: 2)
  let HH = String(format: "%02d", hh)

  return String(s.replacingCharacters(in: range, with: HH).dropLast(2))
}

// 3rd
func timeConversion3(s: String) -> String {
  guard var hh = Int(s.prefix(2)) else { return s }
  hh = (hh % 12) + (s.suffix(2) == "AM" ? 0 : 12)
  return String(format: "%02d", hh) + s.dropFirst(2).dropLast(2)
}

