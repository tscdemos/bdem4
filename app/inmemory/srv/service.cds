using { makerspaceInventory } from '../db/schema.cds';

service makerspaceInventorySrv {
  entity Hardware as projection on makerspaceInventory.Hardware;
}