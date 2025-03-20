import Foundation

func returnSec(_ str: String) -> Int {
    let arr = str.split(separator: ":")
    return Int(arr[0])! * 60 + Int(arr[1])!
}

func solution(_ video_len:String, _ pos:String, _ op_start:String, _ op_end:String, _ commands:[String]) -> String {
    var lenSec = returnSec(video_len)
    var posSec = returnSec(pos)
    var opStartSec = returnSec(op_start)
    var opEndSec = returnSec(op_end)
    
    for cmd in commands {
        if posSec >= opStartSec && posSec < opEndSec {
            posSec = opEndSec
        }
        
        if cmd == "prev" {
            let newPos = posSec - 10
            if newPos < 0 {
                posSec = 0
            } else {
                posSec = newPos
            }
        } else {
            if posSec < opStartSec && posSec + 10 >= opStartSec {
                posSec = opEndSec
            } else {
                let newPos = posSec + 10
                if newPos > lenSec {
                    posSec = lenSec
                } else {
                    posSec = newPos
                }
            }
        }
    }
    
    if posSec >= opStartSec && posSec < opEndSec {
        posSec = opEndSec
    }
    
    var resultHour = String(posSec / 60)
    var resultMinute = String(posSec % 60)
    if Int(resultHour)! < 10 {
        resultHour = "0\(resultHour)"
    }
    if Int(resultMinute)! < 10 {
        resultMinute = "0\(resultMinute)"
    }
    
    return "\(resultHour):\(resultMinute)"
}