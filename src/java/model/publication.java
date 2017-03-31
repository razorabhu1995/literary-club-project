
package model;

/**
 *
 * @author YubRaj
 */
public class publication {

    private String id;
    private String name;
    private String education_level;
    private String email;
    private String title;
    private String category;
    private String date_of_publish;
    private String language;
    private String contenturl;
    private String photourl;
    public publication(String id, String name, String education_level, String email, String title, String category, String date_of_publish, String language,String photourl) {
        this.id = id;
        this.name = name;
        this.education_level = education_level;
        this.email = email;
        this.title = title;
        this.category = category;
        this.date_of_publish = date_of_publish;
        this.language = language;
        this.photourl= photourl;
        
    }

    public publication(String id, String name, String education_level, String email, String title, String category, String date_of_publish, String language, String contenturl, String photourl) {
        this.id = id;
        this.name = name;
        this.education_level = education_level;
        this.email = email;
        this.title = title;
        this.category = category;
        this.date_of_publish = date_of_publish;
        this.language = language;
        this.contenturl = contenturl;
        this.photourl=photourl;
    }

    public String getContenturl() {
        return contenturl;
    }

    public void setContenturl(String contenturl) {
        this.contenturl = contenturl;
    }


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEducation_level() {
        return education_level;
    }

    public void setEducation_level(String education_level) {
        this.education_level = education_level;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDate_of_publish() {
        return date_of_publish;
    }

    public void setDate_of_publish(String date_of_publish) {
        this.date_of_publish = date_of_publish;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getPhotourl() {
        return photourl;
    }

    public void setPhotourl(String photourl) {
        this.photourl = photourl;
    }
    
}
