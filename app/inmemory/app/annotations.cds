using { makerspaceInventorySrv } from '../srv/service.cds';

annotate makerspaceInventorySrv.Category with @odata.draft.enabled;
annotate makerspaceInventorySrv.Category with @UI.HeaderInfo: { TypeName: 'Category', TypeNamePlural: 'Categories', Title: { Value: name } };
annotate makerspaceInventorySrv.Category with {
  ID @Common.Text: { $value: name, ![@UI.TextArrangement]: #TextOnly }
};
annotate makerspaceInventorySrv.Category with @UI.Identification: [{ Value: name }];
annotate makerspaceInventorySrv.Category with {
  name @title: 'Name';
  hardware @title: 'Hardware'
};

annotate makerspaceInventorySrv.Category with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: name },
    { $Type: 'UI.DataField', Value: hardware }
];

annotate makerspaceInventorySrv.Category with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: name },
    { $Type: 'UI.DataField', Value: hardware }
  ]
};

annotate makerspaceInventorySrv.Category with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate makerspaceInventorySrv.Hardware with @odata.draft.enabled;
annotate makerspaceInventorySrv.Hardware with @UI.HeaderInfo: { TypeName: 'Hardware', TypeNamePlural: 'Hardwares', Title: { Value: type } };
annotate makerspaceInventorySrv.Hardware with {
  ID @Common.Text: { $value: type, ![@UI.TextArrangement]: #TextOnly }
};
annotate makerspaceInventorySrv.Hardware with @UI.Identification: [{ Value: type }];
annotate makerspaceInventorySrv.Hardware with {
  type @title: 'Type';
  quantity @title: 'Quantity';
  category @title: 'Category'
};

annotate makerspaceInventorySrv.Hardware with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: type },
    { $Type: 'UI.DataField', Value: quantity },
    { $Type: 'UI.DataField', Value: category }
];

annotate makerspaceInventorySrv.Hardware with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: type },
    { $Type: 'UI.DataField', Value: quantity },
    { $Type: 'UI.DataField', Value: category }
  ]
};

annotate makerspaceInventorySrv.Hardware with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate makerspaceInventorySrv.Item with @odata.draft.enabled;
annotate makerspaceInventorySrv.Item with @UI.HeaderInfo: { TypeName: 'Item', TypeNamePlural: 'Items', Title: { Value: serialNumber } };
annotate makerspaceInventorySrv.Item with {
  ID @Common.Text: { $value: serialNumber, ![@UI.TextArrangement]: #TextOnly }
};
annotate makerspaceInventorySrv.Item with @UI.Identification: [{ Value: serialNumber }];
annotate makerspaceInventorySrv.Item with {
  serialNumber @title: 'Serial Number';
  purchaseDate @title: 'Purchase Date';
  purchaseLocation @title: 'Purchase Location';
  storageLocation @title: 'Storage Location';
  hardware @title: 'Hardware'
};

annotate makerspaceInventorySrv.Item with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: serialNumber },
    { $Type: 'UI.DataField', Value: purchaseDate },
    { $Type: 'UI.DataField', Value: purchaseLocation },
    { $Type: 'UI.DataField', Value: storageLocation },
    { $Type: 'UI.DataField', Value: hardware }
];

annotate makerspaceInventorySrv.Item with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: serialNumber },
    { $Type: 'UI.DataField', Value: purchaseDate },
    { $Type: 'UI.DataField', Value: purchaseLocation },
    { $Type: 'UI.DataField', Value: storageLocation },
    { $Type: 'UI.DataField', Value: hardware }
  ]
};

annotate makerspaceInventorySrv.Item with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];