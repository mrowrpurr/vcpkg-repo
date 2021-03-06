vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO mrowrpurr/sksevr-mirror
  REF ac01fa14a75d268d25f3fb16b8962fb050ce458b
  SHA512 d13b9046eb0c61976364b1e6ba4c181cbce12bfefe80d3b768fcbe7571dd17f166e9612652d87ef151fceadfd281db0e517c4c5604ed1e40dcc5f78a5223e8e9
  HEAD_REF main
)

SET(VCPKG_POLICY_DLLS_WITHOUT_LIBS enabled)

set(BUILDTREE_PATH ${CURRENT_BUILDTREES_DIR}/${TARGET_TRIPLET})

file(REMOVE_RECURSE ${BUILDTREE_PATH})
file(COPY ${SOURCE_PATH}/ DESTINATION ${BUILDTREE_PATH})

vcpkg_build_msbuild(
    PROJECT_PATH "${BUILDTREE_PATH}/sksevr/sksevr.sln"
)

file(INSTALL
    "${BUILDTREE_PATH}/sksevr/skse64/BSModelDB.h"
    "${BUILDTREE_PATH}/sksevr/skse64/Colors.h"
    "${BUILDTREE_PATH}/sksevr/skse64/CustomMenu.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GameAPI.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GameBSExtraData.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GameCamera.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GameData.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GameEvents.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GameExtraData.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GameFormComponents.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GameForms.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GameHandlers.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GameInput.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GameMenus.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GameObjects.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GamePathing.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GameRTTI.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GameReferences.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GameResources.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GameSettings.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GameStreams.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GameTypes.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GameUtilities.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GameVR.h"
    "${BUILDTREE_PATH}/sksevr/skse64/GlobalLocks.h"
    "${BUILDTREE_PATH}/sksevr/skse64/HashUtil.h"
    "${BUILDTREE_PATH}/sksevr/skse64/Hooks_Camera.h"
    "${BUILDTREE_PATH}/sksevr/skse64/Hooks_Data.h"
    "${BUILDTREE_PATH}/sksevr/skse64/Hooks_Debug.h"
    "${BUILDTREE_PATH}/sksevr/skse64/Hooks_Diagnostics.h"
    "${BUILDTREE_PATH}/sksevr/skse64/Hooks_DirectInput8Create.h"
    "${BUILDTREE_PATH}/sksevr/skse64/Hooks_Event.h"
    "${BUILDTREE_PATH}/sksevr/skse64/Hooks_Gameplay.h"
    "${BUILDTREE_PATH}/sksevr/skse64/Hooks_Handlers.h"
    "${BUILDTREE_PATH}/sksevr/skse64/Hooks_Memory.h"
    "${BUILDTREE_PATH}/sksevr/skse64/Hooks_NetImmerse.h"
    "${BUILDTREE_PATH}/sksevr/skse64/Hooks_ObScript.h"
    "${BUILDTREE_PATH}/sksevr/skse64/Hooks_Papyrus.h"
    "${BUILDTREE_PATH}/sksevr/skse64/Hooks_SaveLoad.h"
    "${BUILDTREE_PATH}/sksevr/skse64/Hooks_Scaleform.h"
    "${BUILDTREE_PATH}/sksevr/skse64/Hooks_Threads.h"
    "${BUILDTREE_PATH}/sksevr/skse64/Hooks_UI.h"
    "${BUILDTREE_PATH}/sksevr/skse64/Hooks_VR.h"
    "${BUILDTREE_PATH}/sksevr/skse64/InputMap.h"
    "${BUILDTREE_PATH}/sksevr/skse64/InternalSerialization.h"
    "${BUILDTREE_PATH}/sksevr/skse64/InternalTasks.h"
    "${BUILDTREE_PATH}/sksevr/skse64/InternalVR.h"
    "${BUILDTREE_PATH}/sksevr/skse64/NiAdditionalGeometryData.h"
    "${BUILDTREE_PATH}/sksevr/skse64/NiControllers.h"
    "${BUILDTREE_PATH}/sksevr/skse64/NiExtraData.h"
    "${BUILDTREE_PATH}/sksevr/skse64/NiGeometry.h"
    "${BUILDTREE_PATH}/sksevr/skse64/NiInterpolators.h"
    "${BUILDTREE_PATH}/sksevr/skse64/NiLight.h"
    "${BUILDTREE_PATH}/sksevr/skse64/NiMaterial.h"
    "${BUILDTREE_PATH}/sksevr/skse64/NiNodes.h"
    "${BUILDTREE_PATH}/sksevr/skse64/NiObjects.h"
    "${BUILDTREE_PATH}/sksevr/skse64/NiProperties.h"
    "${BUILDTREE_PATH}/sksevr/skse64/NiRTTI.h"
    "${BUILDTREE_PATH}/sksevr/skse64/NiRenderer.h"
    "${BUILDTREE_PATH}/sksevr/skse64/NiSerialization.h"
    "${BUILDTREE_PATH}/sksevr/skse64/NiTextures.h"
    "${BUILDTREE_PATH}/sksevr/skse64/NiTypes.h"
    "${BUILDTREE_PATH}/sksevr/skse64/ObScript.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusActiveMagicEffect.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusActor.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusActorBase.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusActorValueInfo.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusAlias.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusAmmo.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusArgs.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusArmor.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusArmorAddon.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusArt.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusBook.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusCamera.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusCell.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusClass.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusColorForm.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusCombatStyle.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusConstructibleObject.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusDefaultObjectManager.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusDelayFunctors.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusEnchantment.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusEquipSlot.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusEventFunctor.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusEvents.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusFaction.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusFlora.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusForm.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusFormList.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusGame.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusGameData.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusHeadPart.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusIngredient.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusInput.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusInterfaces.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusKeyword.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusLeveledActor.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusLeveledItem.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusLeveledSpell.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusMagicEffect.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusMath.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusMisc.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusModEvent.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusNativeFunctions.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusNetImmerse.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusObjectReference.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusObjects.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusPerk.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusPotion.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusQuest.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusRace.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusReferenceAlias.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusSKSE.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusScroll.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusShout.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusSound.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusSoundDescriptor.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusSpawnerTask.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusSpell.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusStringUtil.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusTextureSet.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusTree.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusUI.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusUICallback.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusUtility.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusVM.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusValue.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusWeapon.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusWeather.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PapyrusWornObject.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PluginAPI.h"
    "${BUILDTREE_PATH}/sksevr/skse64/PluginManager.h"
    "${BUILDTREE_PATH}/sksevr/skse64/ScaleformAPI.h"
    "${BUILDTREE_PATH}/sksevr/skse64/ScaleformCallbacks.h"
    "${BUILDTREE_PATH}/sksevr/skse64/ScaleformExtendedData.h"
    "${BUILDTREE_PATH}/sksevr/skse64/ScaleformLoader.h"
    "${BUILDTREE_PATH}/sksevr/skse64/ScaleformMovie.h"
    "${BUILDTREE_PATH}/sksevr/skse64/ScaleformState.h"
    "${BUILDTREE_PATH}/sksevr/skse64/ScaleformTypes.h"
    "${BUILDTREE_PATH}/sksevr/skse64/ScaleformVM.h"
    "${BUILDTREE_PATH}/sksevr/skse64/ScaleformValue.h"
    "${BUILDTREE_PATH}/sksevr/skse64/Serialization.h"
    "${BUILDTREE_PATH}/sksevr/skse64/Translation.h"
    "${BUILDTREE_PATH}/sksevr/skse64/gamethreads.h"
    "${BUILDTREE_PATH}/sksevr/skse64/openvr_1_0_12.h"
    "${BUILDTREE_PATH}/sksevr/skse64/openvr_1_7_15.h"
    DESTINATION "${CURRENT_PACKAGES_DIR}/include"
)

set(VCPKG_POLICY_DLLS_WITHOUT_EXPORTS enabled)

if(NOT DEFINED VCPKG_BUILD_TYPE OR VCPKG_BUILD_TYPE STREQUAL "debug")
    file(INSTALL
        "${BUILDTREE_PATH}/sksevr/${TRIPLET_SYSTEM_ARCH}/Debug/sksevr_1_4_15.dll"
        "${BUILDTREE_PATH}/sksevr/${TRIPLET_SYSTEM_ARCH}/Debug/sksevr_1_4_15.pdb"
        DESTINATION "${CURRENT_PACKAGES_DIR}/debug/bin"
    )
endif()

if(NOT DEFINED VCPKG_BUILD_TYPE OR VCPKG_BUILD_TYPE STREQUAL "release")
    file(INSTALL
        "${BUILDTREE_PATH}/sksevr/${TRIPLET_SYSTEM_ARCH}/Release/sksevr_1_4_15.dll"
        "${BUILDTREE_PATH}/sksevr/${TRIPLET_SYSTEM_ARCH}/Release/sksevr_1_4_15.pdb"
        DESTINATION "${CURRENT_PACKAGES_DIR}/bin"
    )
endif()

vcpkg_copy_pdbs()

file(INSTALL
    "${SOURCE_PATH}/LICENSE.txt"
    DESTINATION "${CURRENT_PACKAGES_DIR}/share/sksevr/copyright"
    RENAME copyright
)
