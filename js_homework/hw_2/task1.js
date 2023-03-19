function getCountryCapital () {
    const citiesAndCountries = {
        'Киев': 'Украина',
        'Нью-Йорк': 'США',
        'Амстердам': 'Нидерланды',
        'Берлин': 'Германия',
        'Париж': 'Франция',
        'Лиссабон': 'Португалия',
        'Вена': 'Австрия',
    };
    for (let country in citiesAndCountries){
        console.log(`${country} - это ${citiesAndCountries[country]}`)
    }
}
getCountryCapital()
