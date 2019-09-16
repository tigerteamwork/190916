trigger HelloWorld on Lead (before update) {
    for (Lead l : trigger.new) {
        l.firstname = 'Hello';
        l.lastname = 'World';
    }
}