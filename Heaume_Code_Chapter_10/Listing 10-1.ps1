function Compliment-Yourself {
    $randomNumber = Get-Random -Minimum 1 -Maximum 3

    if ($randomNumber -eq 1) {
        return 'You are doing great!'
    } else {
        return 'Keep up the good work!'
    }
}

Function Compliment-Owen {
    $randomNumber = Get-Random -Minimum 1 -Maximum 3

    if ($randomNumber -eq 1) {
        return 'Well done Owen, you are doing great!'
    } elseif ($randomNumber -eq 2) {
        return 'Hey Owen! Keep up the good work!'
    } else {
        return 'This is a great chapter!'
    }
} 
