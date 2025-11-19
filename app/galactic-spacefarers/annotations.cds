using GalacticService as service from '../../srv/galactic-service';
annotate service.Spacefarers with {
    originPlanet @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Planet',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : originPlanet_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'gravity',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'atmosphereBreathable',
            },
        ],
    }
};

annotate service.Spacefarers with {
    spacesuitColor @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'SpacesuitColor',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : spacesuitColor_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'hexCode',
            },
        ],
    }
};

annotate service.Spacefarers with {
    department @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Department',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : department_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
        ],
    }
};

annotate service.Spacefarers with {
    position @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Position',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : position_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'title',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'baseSalary',
            },
        ],
    }
};

