public virtual Class Play {
    
    private String title;
    private String author;
    private PlayType genre;
    
    public Play() {
        title = '';
        author = '';
        genre = PlayType.NOTSELECTED;
        
    }
    
    public Play (String argTitle) {
        title = argTitle;
        author = '';
        genre = PlayType.NOTSELECTED;
        
    }
    
    public void setTitle (String argTitle) {
        title = argTitle;
    }
    
    public void setAuthor (String argAuthor) {
        author = argAuthor;
    }
    
    public void setGenre (PlayType argGenre) {
        genre = argGenre;
    }
    
    public String getTitle () {
    	return title;
    }
    
    public String getAuthor () {
        return author;
    }
    
    public PlayType getGenre () {
        return genre;
    }
    
    public virtual void display(){
        System.debug('Play Object:  ');
        System.debug('Title:  ' + title);
        System.debug('Author:  ' + author);
        System.debug('Genre:  ' + genre);
    }

}