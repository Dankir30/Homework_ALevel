function getNameOfDay(lang, day){
    const namesOfDays = {
      ru: ['Понедельник', 'Вторник', 'Среда','Четверг', 'Пятница','Суббота','Воскресенье'],
      en: ['Monday', 'Tuesday', 'Wednesday', 'Thursday','Friday','Saturday', 'Sunday']
  }
    let res_day = namesOfDays[lang][day-1]
    return res_day
  }