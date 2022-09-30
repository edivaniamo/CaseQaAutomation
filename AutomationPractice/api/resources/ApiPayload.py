def montarHeaderPostToken(clienti_id, clienti_secret):
    return{
        "Content-Type": "application/json",
        "grant_type": "client_credentials",
        "client_id": clienti_id,
        "client_secret": clienti_secret
    }

def montarHeaderGetAnimals(token):
    return{
        "Authorization": "Bearer "+token
    }

def validarJsonListaAnimalPorId():
    return{
        "id", "organization_id", "url", "type", "species", "breeds", "colors", "age", "gender", "size", "coat",
        "attributes", "environment","tags", "name", "description", "organization_animal_id", "photos", "primary_photo_cropped",
        "videos", "status", "status_changed_at", "published_at", "distance", "contact", "_links"
    }