package com.devsuperior.dslearnbds.resources.exceptions;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

public class OAuthCustomError implements Serializable {
    private static final long serialVersionUID = 1L;
    // Assistant class - The attributes are equals OAuth error attributes

    private String error;

    @JsonProperty("error_description") // Formated to OAuth error when serializable
    private String errorDescription;

    public OAuthCustomError(){

    }

    public OAuthCustomError(String error, String errorDescription) {
        this.error = error;
        this.errorDescription = errorDescription;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public String getErrorDescription() {
        return errorDescription;
    }

    public void setErrorDescription(String errorDescription) {
        this.errorDescription = errorDescription;
    }
}
