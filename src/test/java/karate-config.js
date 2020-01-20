function() {
    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'smoke';
    }
    var config = {
        env: env,
        serverUrl : 'https://automationintesting.online/booking/'
    };
    return config;
}