using { makerspaceInventorySrv } from '../srv/service.cds';

annotate makerspaceInventorySrv.Hardware with @odata.draft.enabled;
annotate makerspaceInventorySrv.Hardware with @UI.HeaderInfo: { TypeName: 'Hardware', TypeNamePlural: 'Hardwares', Title: { Value: type } };
annotate makerspaceInventorySrv.Hardware with {
  ID @Common.Text: { $value: type, ![@UI.TextArrangement]: #TextOnly }
};
annotate makerspaceInventorySrv.Hardware with @UI.Identification: [{ Value: type }];
annotate makerspaceInventorySrv.Hardware with {
  type @title: 'Type';
  quantity @title: 'Quantity'
};

annotate makerspaceInventorySrv.Hardware with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: type },
    { $Type: 'UI.DataField', Value: quantity }
];

annotate makerspaceInventorySrv.Hardware with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: type },
    { $Type: 'UI.DataField', Value: quantity }
  ]
};

annotate makerspaceInventorySrv.Hardware with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

