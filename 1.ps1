$Today = (Get-Date).Date

$Monday = ($Today.AddDays(1 - $Today.DayOfWeek.value__)) # Находим понедельник
$Sunday = $Monday.AddDays(6) # Добавляем 6 дней

## Пилим даты на части ##

# Monday
$Md = $Monday.Date.Day 
    if ($Md.Length -eq 1) {
        $Md = '{0:d2}' -f $Md
    }
$Mm = $Monday.Date.Month
    if ($Mm.Length -eq 1) {
        $Mm = '{0:d2}' -f $Mm
    }
$My = $Monday.Date.Year
#################

# Sunday
$Sd = $Sunday.Date.Day
    if ($Sd.Length -eq 1) {
        $Sd = '{0:d2}' -f $Sd
    }
$Sm = $Sunday.Date.Month
    if ($Sm.Length -eq 1) {
        $Sm = '{0:d2}' -f $Sm
    }
$Sy = $Sunday.Date.Year
#################

# Запуск страницы с параметрами
Start-Process "https://mauniver.ru/student/timetable/new/print.php?key=db41c738-199f-11ef-9f67-1cc1de6f817c&perstart=$My-$Mm-$Md&perend=$Sy-$Sm-$Sd" 
