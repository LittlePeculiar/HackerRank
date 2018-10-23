/*
 Given a time in 12-hour AM/PM format, convert it to military (24-hour) time.

 Note: Midnight is 12:00:00AM on a 12-hour clock, and 00:00:00 on a 24-hour clock. Noon is 12:00:00PM on a 12-hour clock, and 12:00:00 on a 24-hour clock.
 */

func timeConversion(s: String) -> String {
// +12 / PM or AM 제거
  var timeString = s
  let hourInt = Int(s.prefix { ($0 != ":") })
  var militaryTime = ""

  if let hourInt = hourInt {
  militaryTime = String(hourInt + 12)
  }

  let hourStartIdx = timeString.index(timeString.startIndex, offsetBy: 0)
  let hourEndIdx = timeString.index(timeString.startIndex, offsetBy: 2)
  timeString.replaceSubrange(hourStartIdx..<hourEndIdx, with: militaryTime)

  for _ in 0...1 {
    timeString.removeLast()
  }

  return timeString
}

var temp = timeConversion(s: "07:23:30PM")

