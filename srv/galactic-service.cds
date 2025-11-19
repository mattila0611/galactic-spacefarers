using galactic from '../db/schema';

@requires: 'authenticated-user'
@impl: 'srv/galactic-service.ts'
service GalacticService {

    @odata.draft.enabled
    @UI: {
        SelectionFields: [ firstName, lastName ],
        LineItem: [
            { Value: firstName },
            { Value: lastName },
            { Value: originPlanet,   Label: 'Origin Planet' },
            { Value: department,     Label: 'Department' },
            { Value: stardustCollected },
            { Value: wormholeSkill }
        ],
        HeaderInfo: {
            TypeName       : 'Spacefarer',
            TypeNamePlural : 'Spacefarers',
            Title          : { Value: firstName },
            Description    : { Value: lastName }
        },
        Facets: [{
            $Type  : 'UI.ReferenceFacet',
            ID     : 'General',
            Label  : 'General Information',
            Target : '@UI.FieldGroup#General'
        }],
        FieldGroup #General : {
            Data : [
                { Value: firstName },
                { Value: lastName },
                { Value: originPlanet_ID,   Label: 'Origin Planet' },
                { Value: spacesuitColor_ID, Label: 'Spacesuit Color' },
                { Value: department_ID,     Label: 'Department' },
                { Value: position_ID,       Label: 'Position' },
                { Value: stardustCollected },
                { Value: wormholeSkill }
            ]
        }
    }
    entity Spacefarers as projection on galactic.Spacefarer;
    entity Planet        as projection on galactic.Planet;
    entity SpacesuitColor as projection on galactic.SpacesuitColor;
    entity Department    as projection on galactic.Department;
    entity Position      as projection on galactic.Position;
}