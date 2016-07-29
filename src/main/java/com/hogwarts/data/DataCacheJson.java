package com.hogwarts.data;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hogwarts.entities.Wizard;


import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;


public class DataCacheJson {
    private static DataCacheJson instance = null;

    private static HashMap<String, Wizard> wizardsHashMap;
    private static Path wizardsFilePath = Paths.get("/Users/ari/wizards.json");
    private DataCacheJson() {
        // Exists only to defeat instantiation. this makes this bean a constructor? or a singleton?
    }

    public static synchronized DataCacheJson getInstance() {
        if(instance == null) {
            instance = new DataCacheJson();
        }
        return instance;
    }


    private static void checkLoaded() {
        if(wizardsHashMap==null || wizardsHashMap.isEmpty()) {
            loadDataCache();
        }
    }

    public static ArrayList<Wizard> getWizards() {
        checkLoaded();
        return new ArrayList<>(wizardsHashMap.values());
    }

    public static Wizard getWizard(String wizardId) {
        checkLoaded();
        Wizard wizard = null;
        if(wizardsHashMap.containsKey(wizardId)) {
            wizard = wizardsHashMap.get(wizardId);
        }
        return wizard;
    }

    public static void setWizard(Wizard wizard) {
        checkLoaded();
        wizardsHashMap.put(wizard.getWizardId()+"",wizard);
        saveAllToFiles();
    }

    private static void saveAllToFiles() {
        try {
            ObjectMapper mapper = new ObjectMapper();
            mapper.writeValue(Files.newOutputStream(wizardsFilePath), wizardsHashMap);
        } catch (IOException ioe) {
            System.out.println("Issue writing HashMaps to JSON files in DataCacheJson.saveAllToFiles()");
            ioe.printStackTrace();
        }
    }

    private static void loadDataCache() {
        if(!Files.exists(wizardsFilePath)) {
            initalLoadDataCache();
            saveAllToFiles();
        }
        try {
            ObjectMapper mapper = new ObjectMapper();
            wizardsHashMap = mapper.readValue(Files.newInputStream(wizardsFilePath), new TypeReference<HashMap<String,Wizard>>(){});
        } catch (IOException ioe) {
            System.out.println("Issue reading HashMaps from JSON files in DataCacheJson.loadDataCache()");
            ioe.printStackTrace();
        }
    }
    //Wizard(String wizardId, String firstName, String lastName, WizardCrestType wizardCrestType
    //DeathlyHallow deathlyHallow, String bean)

    private static void initalLoadDataCache() {
        wizardsHashMap = new HashMap<>();

        String wizardId = System.currentTimeMillis()+"-bp";
        wizardsHashMap.put(wizardId,new Wizard(wizardId,"Rob","Perfect", Wizard.WizardCrestType.Hufflepuff,
             Wizard.DeathlyHallow.Cloak, "limon"));

        wizardId = System.currentTimeMillis()+"-bj";
        wizardsHashMap.put(wizardId,new Wizard(wizardId,"Bonnie","Jeckles", Wizard.WizardCrestType.Gryffindor,
                Wizard.DeathlyHallow.Stone, "Grape"));

        wizardId = System.currentTimeMillis()+"-mw";
        wizardsHashMap.put(wizardId,new Wizard(wizardId,"Macy","Windsor", Wizard.WizardCrestType.Slytherin,
                Wizard.DeathlyHallow.Stone, "Taffy"));

        wizardId = System.currentTimeMillis()+"-hs";
        wizardsHashMap.put(wizardId,new Wizard(wizardId,"Hazle","Stine", Wizard.WizardCrestType.Ravenclaw,
                Wizard.DeathlyHallow.Wand, "Soup"));

    }

}
