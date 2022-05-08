package com.devsuperior.dslearnbds.entities;



public class Content extends Lesson{
    private static final long serialVersionID = 1L;

    private String textContent;
    private String videoUri;

    public Content(){}

    public Content(Long id, String title, String position, Section section, String textContent, String videoUri) {
        super(id, title, position, section);
        this.textContent = textContent;
        this.videoUri = videoUri;
    }

    public String getTextContent() {
        return textContent;
    }

    public void setTextContent(String textContent) {
        this.textContent = textContent;
    }

    public String getVideoUri() {
        return videoUri;
    }

    public void setVideoUri(String videoUri) {
        this.videoUri = videoUri;
    }

    /* the other getters and setters was extends and equals with hashcode */

}
