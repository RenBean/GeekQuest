package com.hogwarts.entities;

public class Wizard {
    public static enum WizardCrestType { Gryffindor, Ravenclaw, Hufflepuff, Slytherin };
    public static enum DeathlyHallow {Wand, Stone, Cloak};

    private String wizardId;
    private String firstName;
    private String lastName;
    private WizardCrestType wizardCrestType;

    private DeathlyHallow deathlyHallow;
    private String bean;


    public Wizard() {

    }

    public Wizard(String wizardId, String firstName, String lastName,
                  WizardCrestType wizardCrestType,
                  DeathlyHallow deathlyHallow, String bean) {
        this.wizardId = wizardId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.wizardCrestType = wizardCrestType;
        this.deathlyHallow = deathlyHallow;
        this.bean = bean;


    }

    public String getWizardId() {
        return wizardId;
    }

    public void setWizardId(String wizardId) {
        this.wizardId = wizardId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public WizardCrestType getWizardCrestType() {
        return wizardCrestType;
    }

    public void setWizardCrestType(WizardCrestType wizardCrestType) {
        this.wizardCrestType = wizardCrestType;
    }

    public DeathlyHallow getDeathlyHallow() {
        return deathlyHallow;
    }

    public void setDeathlyHallow(DeathlyHallow deathlyHallow) {
        this.deathlyHallow = deathlyHallow;
    }

    public String getBean() {
        return bean;
    }

    public void setBean(String bean) {
        this.bean = bean;
    }

}
