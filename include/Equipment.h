#ifndef ZSDX_EQUIPMENT_H
#define ZSDX_EQUIPMENT_H

#include "Common.h"
#include "InventoryItem.h"

/**
 * This class represents Link's equipment. It makes the interface
 * between the savegame and other engine classes.
 * You should call this class to know his current equipment
 * (sword, rupees, objects...) and to modify it.
 */
class Equipment {

 private:

  Savegame *savegame;

  // magic bar decrease handling
  Uint32 magic_decrease_delay;
  Uint32 next_magic_decrease_date;

 public:

  Equipment(Savegame *savegame);
  ~Equipment(void);

  void update(void);

  // tunic
  int get_tunic_number(void);
  void set_tunic_number(int tunic_number);

  // sword
  bool has_sword(void);
  int get_sword_number(void);
  void set_sword_number(int sword_number);

  // shield
  bool has_shield(void);
  int get_shield_number(void);
  void set_shield_number(int shield_number);

  // rupees
  int get_max_rupees(void);
  void set_max_rupees(int max_rupees);

  int get_rupees(void);
  void set_rupees(int rupees);
  void add_rupees(int rupees_to_add);
  void remove_rupees(int rupees_to_remove);

  // hearts
  int get_max_hearts(void);
  void set_max_hearts(int max_hearts);
  void add_heart_container(void);

  int get_hearts(void);
  void set_hearts(int hearts);
  void add_hearts(int hearts_to_add);
  void remove_hearts(int hearts_to_remove);
  void restore_all_hearts(void);
  bool needs_hearts(void);

  int get_nb_pieces_of_heart(void);
  bool has_piece_of_heart(int piece_of_heart_id);
  void add_piece_of_heart(int piece_of_heart_id);

  // magic
  int get_max_magic(void);
  void set_max_magic(int max_magic);

  int get_magic(void);
  void set_magic(int magic);
  void add_magic(int magic_to_add);
  void remove_magic(int magic_to_remove);
  void restore_all_magic(void);
  bool needs_magic(void);

  bool is_magic_decreasing(void);
  void start_removing_magic(Uint32 delay);
  void stop_removing_magic(void);
  
  // bombs
  int get_max_bombs(void);
  void set_max_bombs(int max_bombs);

  int get_bombs(void);
  void set_bombs(int bombs);
  void add_bombs(int bombs_to_add);
  void remove_bomb(void);
  bool needs_bombs(void);

  // arrows
  int get_max_arrows(void);
  void set_max_arrows(int max_arrows);

  int get_arrows(void);
  void set_arrows(int arrows);
  void add_arrows(int arrows_to_add);
  void remove_arrow(void);
  bool needs_arrows(void);

  // inventory items
  int has_inventory_item(InventoryItem::ItemId item_id);
  void give_inventory_item(InventoryItem::ItemId item_id);
  void give_inventory_item(InventoryItem::ItemId item_id, int variant);
  void remove_inventory_item(InventoryItem::ItemId item_id);

  InventoryItem::ItemId get_current_item(int slot);
  void set_current_item(int slot, InventoryItem::ItemId item_id);
  

  // TODO: quest status, dungeon items...

};

#endif
