; ModuleID = 'typemaps.x86_64.ll'
source_filename = "typemaps.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.TypeMapJava = type {
	i32, ; uint32_t module_index
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_name_index
}

%struct.TypeMapModule = type {
	[16 x i8], ; uint8_t module_uuid[16]
	i32, ; uint32_t entry_count
	i32, ; uint32_t duplicate_count
	ptr, ; TypeMapModuleEntry map
	ptr, ; TypeMapModuleEntry duplicate_map
	ptr, ; char* assembly_name
	ptr, ; MonoImage image
	i32, ; uint32_t java_name_width
	ptr ; uint8_t java_map
}

%struct.TypeMapModuleEntry = type {
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_map_index
}

@map_module_count = dso_local local_unnamed_addr constant i32 44, align 4

@java_type_count = dso_local local_unnamed_addr constant i32 1386, align 4

; Managed modules map
@map_modules = dso_local local_unnamed_addr global [44 x %struct.TypeMapModule] [
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x09, i8 u0x00, i8 u0x5e, i8 u0x59, i8 u0x86, i8 u0xec, i8 u0x3b, i8 u0x49, i8 u0xb8, i8 u0x2a, i8 u0x46, i8 u0xf8, i8 u0xe6, i8 u0x52, i8 u0x5b, i8 u0x44 ], ; module_uuid: 595e0009-ec86-493b-b82a-46f8e6525b44
		i32 46, ; uint32_t entry_count
		i32 26, ; uint32_t duplicate_count
		ptr @module0_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module0_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.0_assembly_name, ; assembly_name: Xamarin.GooglePlayServices.Base
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 0
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x14, i8 u0xa0, i8 u0xd6, i8 u0xb6, i8 u0xfe, i8 u0xf6, i8 u0x3b, i8 u0x4f, i8 u0x98, i8 u0x67, i8 u0x7a, i8 u0xd7, i8 u0xb8, i8 u0xb8, i8 u0x07, i8 u0x10 ], ; module_uuid: b6d6a014-f6fe-4f3b-9867-7ad7b8b80710
		i32 68, ; uint32_t entry_count
		i32 25, ; uint32_t duplicate_count
		ptr @module1_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module1_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.1_assembly_name, ; assembly_name: Xamarin.Google.Android.Material
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 1
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x15, i8 u0x7a, i8 u0xb4, i8 u0xcc, i8 u0x7a, i8 u0xb7, i8 u0x81, i8 u0x45, i8 u0xa3, i8 u0x9c, i8 u0xe5, i8 u0x14, i8 u0xbc, i8 u0xd7, i8 u0x89, i8 u0x0e ], ; module_uuid: ccb47a15-b77a-4581-a39c-e514bcd7890e
		i32 3, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module2_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.2_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Fragment
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 2
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x1b, i8 u0x6e, i8 u0xf3, i8 u0x4b, i8 u0x66, i8 u0x9c, i8 u0x72, i8 u0x40, i8 u0xb7, i8 u0x35, i8 u0x16, i8 u0xa7, i8 u0x45, i8 u0xe0, i8 u0xd0, i8 u0x46 ], ; module_uuid: 4bf36e1b-9c66-4072-b735-16a745e0d046
		i32 17, ; uint32_t entry_count
		i32 5, ; uint32_t duplicate_count
		ptr @module3_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module3_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.3_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Common.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 3
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x1c, i8 u0x9c, i8 u0x77, i8 u0x5e, i8 u0x6a, i8 u0x9a, i8 u0x38, i8 u0x44, i8 u0x84, i8 u0x40, i8 u0xf5, i8 u0x34, i8 u0xaf, i8 u0xc0, i8 u0x00, i8 u0x2a ], ; module_uuid: 5e779c1c-9a6a-4438-8440-f534afc0002a
		i32 4, ; uint32_t entry_count
		i32 2, ; uint32_t duplicate_count
		ptr @module4_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module4_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.4_assembly_name, ; assembly_name: Xamarin.AndroidX.SwipeRefreshLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 4
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x1d, i8 u0x16, i8 u0xc8, i8 u0xc2, i8 u0x5b, i8 u0x7f, i8 u0x5a, i8 u0x4e, i8 u0xa8, i8 u0x7b, i8 u0xbd, i8 u0xac, i8 u0x50, i8 u0xd6, i8 u0x43, i8 u0xae ], ; module_uuid: c2c8161d-7f5b-4e5a-a87b-bdac50d643ae
		i32 4, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module5_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module5_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.5_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.UI
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 5
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x1e, i8 u0x7e, i8 u0xf8, i8 u0x4f, i8 u0xf8, i8 u0x6b, i8 u0xbd, i8 u0x44, i8 u0xb0, i8 u0x54, i8 u0xdb, i8 u0x4d, i8 u0xfb, i8 u0x95, i8 u0xeb, i8 u0x55 ], ; module_uuid: 4ff87e1e-6bf8-44bd-b054-db4dfb95eb55
		i32 18, ; uint32_t entry_count
		i32 10, ; uint32_t duplicate_count
		ptr @module6_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module6_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.6_assembly_name, ; assembly_name: Xamarin.GooglePlayServices.Basement
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 6
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x20, i8 u0x00, i8 u0xf4, i8 u0x4d, i8 u0xd5, i8 u0x56, i8 u0xba, i8 u0x47, i8 u0x90, i8 u0xb8, i8 u0x60, i8 u0xcd, i8 u0xec, i8 u0x5c, i8 u0x5d, i8 u0x93 ], ; module_uuid: 4df40020-56d5-47ba-90b8-60cdec5c5d93
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module7_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.7_assembly_name, ; assembly_name: Microsoft.Maui.Graphics
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 7
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x23, i8 u0x35, i8 u0x01, i8 u0xbd, i8 u0x57, i8 u0x5d, i8 u0xb2, i8 u0x43, i8 u0x8f, i8 u0xa9, i8 u0x43, i8 u0x77, i8 u0x25, i8 u0xbb, i8 u0x46, i8 u0x68 ], ; module_uuid: bd013523-5d57-43b2-8fa9-437725bb4668
		i32 1, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module8_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module8_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.8_assembly_name, ; assembly_name: Xamarin.AndroidX.CursorAdapter
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 8
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x24, i8 u0x21, i8 u0x77, i8 u0xc0, i8 u0xea, i8 u0x15, i8 u0x30, i8 u0x4c, i8 u0x82, i8 u0x0f, i8 u0xfd, i8 u0x44, i8 u0x0f, i8 u0x7c, i8 u0xa5, i8 u0xd6 ], ; module_uuid: c0772124-15ea-4c30-820f-fd440f7ca5d6
		i32 9, ; uint32_t entry_count
		i32 5, ; uint32_t duplicate_count
		ptr @module9_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module9_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.9_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.ViewModel.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 9
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x2b, i8 u0xb0, i8 u0xe7, i8 u0x47, i8 u0x34, i8 u0x3a, i8 u0x96, i8 u0x46, i8 u0x96, i8 u0xaf, i8 u0x19, i8 u0x9a, i8 u0xca, i8 u0xb2, i8 u0xc9, i8 u0xf6 ], ; module_uuid: 47e7b02b-3a34-4696-96af-199acab2c9f6
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module10_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.10_assembly_name, ; assembly_name: Xamarin.AndroidX.CardView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 10
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x2b, i8 u0xfe, i8 u0x42, i8 u0x51, i8 u0x9e, i8 u0x7a, i8 u0xfd, i8 u0x44, i8 u0xb1, i8 u0x64, i8 u0xca, i8 u0x12, i8 u0x05, i8 u0x05, i8 u0x5f, i8 u0x9d ], ; module_uuid: 5142fe2b-7a9e-44fd-b164-ca1205055f9d
		i32 80, ; uint32_t entry_count
		i32 6, ; uint32_t duplicate_count
		ptr @module11_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module11_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.11_assembly_name, ; assembly_name: Microsoft.Maui
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 11
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x38, i8 u0x07, i8 u0xe2, i8 u0xd2, i8 u0x80, i8 u0xc4, i8 u0x54, i8 u0x47, i8 u0x99, i8 u0x14, i8 u0xf3, i8 u0x3d, i8 u0xc2, i8 u0x24, i8 u0xda, i8 u0x00 ], ; module_uuid: d2e20738-c480-4754-9914-f33dc224da00
		i32 22, ; uint32_t entry_count
		i32 8, ; uint32_t duplicate_count
		ptr @module12_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module12_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.12_assembly_name, ; assembly_name: Xamarin.AndroidX.Activity
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 12
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x43, i8 u0x74, i8 u0x4a, i8 u0xdb, i8 u0xb3, i8 u0xb0, i8 u0x49, i8 u0x4c, i8 u0x81, i8 u0xa8, i8 u0x5d, i8 u0xe0, i8 u0xa9, i8 u0x7e, i8 u0xca, i8 u0x42 ], ; module_uuid: db4a7443-b0b3-4c49-81a8-5de0a97eca42
		i32 5, ; uint32_t entry_count
		i32 4, ; uint32_t duplicate_count
		ptr @module13_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module13_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.13_assembly_name, ; assembly_name: Xamarin.AndroidX.Loader
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 13
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x45, i8 u0x21, i8 u0x8b, i8 u0x33, i8 u0x33, i8 u0x69, i8 u0xc8, i8 u0x4a, i8 u0xa1, i8 u0x28, i8 u0x27, i8 u0x50, i8 u0x96, i8 u0xd4, i8 u0xd8, i8 u0x23 ], ; module_uuid: 338b2145-6933-4ac8-a128-275096d4d823
		i32 3, ; uint32_t entry_count
		i32 2, ; uint32_t duplicate_count
		ptr @module14_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module14_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.14_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.LiveData.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 14
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x46, i8 u0x24, i8 u0x2a, i8 u0x83, i8 u0x46, i8 u0x9b, i8 u0x04, i8 u0x42, i8 u0xb9, i8 u0x9c, i8 u0x30, i8 u0xf9, i8 u0x33, i8 u0x92, i8 u0xc0, i8 u0x04 ], ; module_uuid: 832a2446-9b46-4204-b99c-30f93392c004
		i32 27, ; uint32_t entry_count
		i32 11, ; uint32_t duplicate_count
		ptr @module15_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module15_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.15_assembly_name, ; assembly_name: Xamarin.GooglePlayServices.Location
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 15
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x49, i8 u0x1b, i8 u0xa5, i8 u0x70, i8 u0x1d, i8 u0x97, i8 u0xe4, i8 u0x4e, i8 u0xa2, i8 u0xf8, i8 u0x7d, i8 u0x4b, i8 u0x8a, i8 u0xeb, i8 u0x9c, i8 u0x05 ], ; module_uuid: 70a51b49-971d-4ee4-a2f8-7d4b8aeb9c05
		i32 6, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module16_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module16_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.16_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Runtime.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 16
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x4d, i8 u0xe7, i8 u0x52, i8 u0x43, i8 u0xcb, i8 u0xaf, i8 u0x34, i8 u0x49, i8 u0x8c, i8 u0xd1, i8 u0xff, i8 u0x5d, i8 u0x13, i8 u0x3b, i8 u0xbc, i8 u0x79 ], ; module_uuid: 4352e74d-afcb-4934-8cd1-ff5d133bbc79
		i32 1, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module17_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module17_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.17_assembly_name, ; assembly_name: Xamarin.AndroidX.CustomView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 17
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x54, i8 u0xa1, i8 u0xfc, i8 u0xdf, i8 u0x87, i8 u0x16, i8 u0x85, i8 u0x4c, i8 u0xba, i8 u0xc5, i8 u0x96, i8 u0xcd, i8 u0x31, i8 u0xc3, i8 u0x1f, i8 u0x56 ], ; module_uuid: dffca154-1687-4c85-bac5-96cd31c31f56
		i32 14, ; uint32_t entry_count
		i32 2, ; uint32_t duplicate_count
		ptr @module18_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module18_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.18_assembly_name, ; assembly_name: Java.Interop
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 18
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x5a, i8 u0x79, i8 u0x2f, i8 u0xf9, i8 u0xa9, i8 u0xb9, i8 u0xca, i8 u0x42, i8 u0x8b, i8 u0xb0, i8 u0x20, i8 u0x61, i8 u0xdc, i8 u0x77, i8 u0x3e, i8 u0x3d ], ; module_uuid: f92f795a-b9a9-42ca-8bb0-2061dc773e3d
		i32 9, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module19_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.19_assembly_name, ; assembly_name: Microsoft.Maui.Essentials
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 19
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x65, i8 u0x50, i8 u0x74, i8 u0x8f, i8 u0xa2, i8 u0xfe, i8 u0x24, i8 u0x47, i8 u0xa7, i8 u0x38, i8 u0xb7, i8 u0x03, i8 u0x86, i8 u0x75, i8 u0xe4, i8 u0xf8 ], ; module_uuid: 8f745065-fea2-4724-a738-b7038675e4f8
		i32 108, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module20_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.20_assembly_name, ; assembly_name: Microsoft.Maui.Controls
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 20
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x67, i8 u0x5d, i8 u0xef, i8 u0xad, i8 u0x5b, i8 u0xd7, i8 u0xe4, i8 u0x41, i8 u0x96, i8 u0xe2, i8 u0x1b, i8 u0xe6, i8 u0x67, i8 u0xfb, i8 u0xfa, i8 u0x23 ], ; module_uuid: adef5d67-d75b-41e4-96e2-1be667fbfa23
		i32 55, ; uint32_t entry_count
		i32 19, ; uint32_t duplicate_count
		ptr @module21_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module21_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.21_assembly_name, ; assembly_name: Xamarin.AndroidX.AppCompat
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 21
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x71, i8 u0x8e, i8 u0xfd, i8 u0x41, i8 u0xe8, i8 u0x30, i8 u0xb6, i8 u0x44, i8 u0x95, i8 u0x98, i8 u0xfd, i8 u0x90, i8 u0x65, i8 u0x11, i8 u0x58, i8 u0x92 ], ; module_uuid: 41fd8e71-30e8-44b6-9598-fd9065115892
		i32 7, ; uint32_t entry_count
		i32 4, ; uint32_t duplicate_count
		ptr @module22_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module22_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.22_assembly_name, ; assembly_name: Xamarin.AndroidX.ViewPager
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 22
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x80, i8 u0xcd, i8 u0x7f, i8 u0x0e, i8 u0x04, i8 u0xf5, i8 u0xfb, i8 u0x49, i8 u0x8c, i8 u0xaa, i8 u0xbc, i8 u0x95, i8 u0x5e, i8 u0x97, i8 u0xe3, i8 u0x6a ], ; module_uuid: 0e7fcd80-f504-49fb-8caa-bc955e97e36a
		i32 3, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module23_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module23_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.23_assembly_name, ; assembly_name: Xamarin.AndroidX.CoordinatorLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 23
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x9a, i8 u0x5c, i8 u0x47, i8 u0x24, i8 u0x30, i8 u0x54, i8 u0x23, i8 u0x4a, i8 u0x91, i8 u0x3a, i8 u0x55, i8 u0x61, i8 u0xe5, i8 u0xd7, i8 u0xa6, i8 u0x65 ], ; module_uuid: 24475c9a-5430-4a23-913a-5561e5d7a665
		i32 6, ; uint32_t entry_count
		i32 3, ; uint32_t duplicate_count
		ptr @module24_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module24_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.24_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.Common.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 24
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x9a, i8 u0xb9, i8 u0xbd, i8 u0x20, i8 u0x43, i8 u0x52, i8 u0xdc, i8 u0x40, i8 u0xaa, i8 u0x78, i8 u0xe8, i8 u0xb8, i8 u0x7e, i8 u0xdf, i8 u0x0b, i8 u0xb0 ], ; module_uuid: 20bdb99a-5243-40dc-aa78-e8b87edf0bb0
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module25_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.25_assembly_name, ; assembly_name: Microsoft.Maui.Maps
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 25
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x9c, i8 u0x27, i8 u0x9b, i8 u0x1f, i8 u0x69, i8 u0x6d, i8 u0x8c, i8 u0x4e, i8 u0xb5, i8 u0x5c, i8 u0x9f, i8 u0x1c, i8 u0x43, i8 u0xf8, i8 u0xd6, i8 u0xf6 ], ; module_uuid: 1f9b279c-6d69-4e8c-b55c-9f1c43f8d6f6
		i32 7, ; uint32_t entry_count
		i32 7, ; uint32_t duplicate_count
		ptr @module26_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module26_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.26_assembly_name, ; assembly_name: Xamarin.KotlinX.Coroutines.Core.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 26
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x9c, i8 u0x5c, i8 u0x15, i8 u0xd8, i8 u0xe9, i8 u0x53, i8 u0x62, i8 u0x40, i8 u0x8e, i8 u0x17, i8 u0x52, i8 u0x3c, i8 u0x76, i8 u0x50, i8 u0x7c, i8 u0x77 ], ; module_uuid: d8155c9c-53e9-4062-8e17-523c76507c77
		i32 10, ; uint32_t entry_count
		i32 9, ; uint32_t duplicate_count
		ptr @module27_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module27_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.27_assembly_name, ; assembly_name: Xamarin.KotlinX.Serialization.Core.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 27
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xa1, i8 u0x0c, i8 u0x63, i8 u0xaf, i8 u0xdd, i8 u0xe8, i8 u0xd0, i8 u0x4c, i8 u0x8c, i8 u0x08, i8 u0xaa, i8 u0xdb, i8 u0xe3, i8 u0xea, i8 u0x24, i8 u0xaa ], ; module_uuid: af630ca1-e8dd-4cd0-8c08-aadbe3ea24aa
		i32 104, ; uint32_t entry_count
		i32 35, ; uint32_t duplicate_count
		ptr @module28_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module28_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.28_assembly_name, ; assembly_name: Xamarin.GooglePlayServices.Maps
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 28
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xa1, i8 u0x7a, i8 u0xac, i8 u0x67, i8 u0xee, i8 u0x0b, i8 u0x01, i8 u0x4c, i8 u0xbb, i8 u0x19, i8 u0x79, i8 u0x3c, i8 u0x9d, i8 u0xec, i8 u0xfb, i8 u0xf1 ], ; module_uuid: 67ac7aa1-0bee-4c01-bb19-793c9decfbf1
		i32 2, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module29_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.29_assembly_name, ; assembly_name: SmartScheduler
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 29
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xa2, i8 u0x84, i8 u0x88, i8 u0x87, i8 u0x4e, i8 u0x31, i8 u0xec, i8 u0x44, i8 u0xa8, i8 u0xac, i8 u0xed, i8 u0xb7, i8 u0xfa, i8 u0x2e, i8 u0x4f, i8 u0x6d ], ; module_uuid: 878884a2-314e-44ec-a8ac-edb7fa2e4f6d
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module30_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.30_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 30
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xa5, i8 u0x20, i8 u0xd8, i8 u0x22, i8 u0xaf, i8 u0xde, i8 u0x73, i8 u0x4b, i8 u0x82, i8 u0x37, i8 u0x04, i8 u0x33, i8 u0x74, i8 u0x0d, i8 u0x76, i8 u0x7e ], ; module_uuid: 22d820a5-deaf-4b73-8237-0433740d767e
		i32 41, ; uint32_t entry_count
		i32 21, ; uint32_t duplicate_count
		ptr @module31_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module31_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.31_assembly_name, ; assembly_name: Xamarin.AndroidX.RecyclerView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 31
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xa6, i8 u0x08, i8 u0xce, i8 u0x37, i8 u0x9f, i8 u0xa4, i8 u0x4c, i8 u0x45, i8 u0x9b, i8 u0x8b, i8 u0x8f, i8 u0xcf, i8 u0x2c, i8 u0x01, i8 u0xc1, i8 u0x37 ], ; module_uuid: 37ce08a6-a49f-454c-9b8b-8fcf2c01c137
		i32 20, ; uint32_t entry_count
		i32 10, ; uint32_t duplicate_count
		ptr @module32_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module32_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.32_assembly_name, ; assembly_name: Xamarin.AndroidX.Fragment
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 32
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xb6, i8 u0xef, i8 u0x02, i8 u0xfe, i8 u0xa5, i8 u0x9a, i8 u0xc3, i8 u0x45, i8 u0xb1, i8 u0x5b, i8 u0xb5, i8 u0xf3, i8 u0xf6, i8 u0x0e, i8 u0x08, i8 u0x6c ], ; module_uuid: fe02efb6-9aa5-45c3-b15b-b5f3f60e086c
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module33_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.33_assembly_name, ; assembly_name: Xamarin.AndroidX.Collection.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 33
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xbf, i8 u0xea, i8 u0xd4, i8 u0xd1, i8 u0x7d, i8 u0xd4, i8 u0xfa, i8 u0x4e, i8 u0xa1, i8 u0x4b, i8 u0x55, i8 u0x94, i8 u0xfe, i8 u0x85, i8 u0xb5, i8 u0xe7 ], ; module_uuid: d1d4eabf-d47d-4efa-a14b-5594fe85b5e7
		i32 11, ; uint32_t entry_count
		i32 9, ; uint32_t duplicate_count
		ptr @module34_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module34_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.34_assembly_name, ; assembly_name: Xamarin.GooglePlayServices.Tasks
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 34
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xca, i8 u0x03, i8 u0xe6, i8 u0xb1, i8 u0xa0, i8 u0x40, i8 u0x80, i8 u0x4f, i8 u0x9f, i8 u0xcd, i8 u0xa2, i8 u0xcf, i8 u0xcd, i8 u0x63, i8 u0xe1, i8 u0x8d ], ; module_uuid: b1e603ca-40a0-4f80-9fcd-a2cfcd63e18d
		i32 2, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module35_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module35_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.35_assembly_name, ; assembly_name: Xamarin.AndroidX.SavedState.SavedState.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 35
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xce, i8 u0x54, i8 u0xa5, i8 u0xd1, i8 u0xd5, i8 u0x7b, i8 u0x9d, i8 u0x47, i8 u0xb4, i8 u0x0b, i8 u0x7f, i8 u0x8d, i8 u0x8b, i8 u0xe4, i8 u0x4a, i8 u0x8c ], ; module_uuid: d1a554ce-7bd5-479d-b40b-7f8d8be44a8c
		i32 2, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module36_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.36_assembly_name, ; assembly_name: Xamarin.AndroidX.AppCompat.AppCompatResources
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 36
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xcf, i8 u0x31, i8 u0x8e, i8 u0x1b, i8 u0xb5, i8 u0x71, i8 u0xe7, i8 u0x4b, i8 u0x89, i8 u0x6b, i8 u0x01, i8 u0xf3, i8 u0x12, i8 u0xb7, i8 u0xfb, i8 u0x4c ], ; module_uuid: 1b8e31cf-71b5-4be7-896b-01f312b7fb4c
		i32 1, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module37_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module37_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.37_assembly_name, ; assembly_name: Xamarin.AndroidX.VersionedParcelable
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 37
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xdd, i8 u0x02, i8 u0xe3, i8 u0xe6, i8 u0x21, i8 u0xff, i8 u0x4d, i8 u0x44, i8 u0x97, i8 u0xfd, i8 u0x3a, i8 u0x22, i8 u0x81, i8 u0x55, i8 u0x0f, i8 u0xf1 ], ; module_uuid: e6e302dd-ff21-444d-97fd-3a2281550ff1
		i32 24, ; uint32_t entry_count
		i32 19, ; uint32_t duplicate_count
		ptr @module38_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module38_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.38_assembly_name, ; assembly_name: Xamarin.Kotlin.StdLib
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 38
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xe1, i8 u0x31, i8 u0x18, i8 u0x91, i8 u0xe1, i8 u0x34, i8 u0x00, i8 u0x41, i8 u0x80, i8 u0xb3, i8 u0xcc, i8 u0xbd, i8 u0x33, i8 u0x0c, i8 u0xf7, i8 u0xa9 ], ; module_uuid: 911831e1-34e1-4100-80b3-ccbd330cf7a9
		i32 7, ; uint32_t entry_count
		i32 5, ; uint32_t duplicate_count
		ptr @module39_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module39_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.39_assembly_name, ; assembly_name: Xamarin.AndroidX.ViewPager2
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 39
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xe4, i8 u0x75, i8 u0xf2, i8 u0xe2, i8 u0x21, i8 u0x27, i8 u0x92, i8 u0x48, i8 u0x99, i8 u0x09, i8 u0xf1, i8 u0xb1, i8 u0x56, i8 u0x4c, i8 u0x53, i8 u0x0f ], ; module_uuid: e2f275e4-2721-4892-9909-f1b1564c530f
		i32 539, ; uint32_t entry_count
		i32 208, ; uint32_t duplicate_count
		ptr @module40_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module40_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.40_assembly_name, ; assembly_name: Mono.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 40
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xe9, i8 u0xba, i8 u0x2d, i8 u0xca, i8 u0xbd, i8 u0x4d, i8 u0x04, i8 u0x4c, i8 u0xa3, i8 u0x6d, i8 u0x2b, i8 u0x89, i8 u0xfe, i8 u0xed, i8 u0x44, i8 u0x61 ], ; module_uuid: ca2dbae9-4dbd-4c04-a36d-2b89feed4461
		i32 4, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module41_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module41_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.41_assembly_name, ; assembly_name: Xamarin.AndroidX.DrawerLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 41
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xf3, i8 u0x2f, i8 u0x9d, i8 u0x3f, i8 u0x2a, i8 u0xbb, i8 u0x70, i8 u0x40, i8 u0x94, i8 u0xec, i8 u0xca, i8 u0xf6, i8 u0x25, i8 u0x89, i8 u0xfa, i8 u0x9b ], ; module_uuid: 3f9d2ff3-bb2a-4070-94ec-caf62589fa9b
		i32 90, ; uint32_t entry_count
		i32 26, ; uint32_t duplicate_count
		ptr @module42_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module42_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.42_assembly_name, ; assembly_name: Xamarin.AndroidX.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 42
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xfc, i8 u0x9d, i8 u0x1a, i8 u0x50, i8 u0x47, i8 u0x90, i8 u0x64, i8 u0x46, i8 u0xb5, i8 u0x5b, i8 u0x30, i8 u0x43, i8 u0x7f, i8 u0x16, i8 u0xef, i8 u0x8e ], ; module_uuid: 501a9dfc-9047-4664-b55b-30437f16ef8e
		i32 3, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module43_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.43_assembly_name, ; assembly_name: Plugin.LocalNotification
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	} ; 43
], align 16

; Java types name hashes
@map_java_hashes = dso_local local_unnamed_addr constant [1386 x i64] [
	i64 u0x00063287e4c20d8e, ; 0 => android/widget/AbsListView$OnScrollListener
	i64 u0x00372cd76802b508, ; 1 => com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener
	i64 u0x0054e7b33c6d2262, ; 2 => com/google/android/material/bottomnavigation/BottomNavigationView
	i64 u0x00acd1e6ad3a3aeb, ; 3 => androidx/core/view/autofill/AutofillIdCompat
	i64 u0x00b2ff364f238abc, ; 4 => com/google/android/gms/common/api/internal/ApiKey
	i64 u0x013d70f30586d278, ; 5 => javax/net/ssl/KeyManagerFactory
	i64 u0x017c0bbcb46cf6dd, ; 6 => android/widget/AutoCompleteTextView
	i64 u0x01a16e6c243bd5d5, ; 7 => mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor
	i64 u0x01afc15612f0c88a, ; 8 => com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy
	i64 u0x01beb04ccd88502c, ; 9 => java/util/ListIterator
	i64 u0x01cd624f1e38cc9f, ; 10 => java/lang/Byte
	i64 u0x020b1cbd9e125d93, ; 11 => crc645d80431ce5f73f11/SimpleViewHolder
	i64 u0x0281652e37c29974, ; 12 => com/google/android/gms/common/api/Response
	i64 u0x0286e891cbd384d2, ; 13 => crc640ec207abc449b2ca/ShellSearchView
	i64 u0x02e426fc27cd6822, ; 14 => android/provider/MediaStore$Images$Media
	i64 u0x0304e457b1d15194, ; 15 => android/view/ViewGroup$MarginLayoutParams
	i64 u0x0318f6ff5c94fca0, ; 16 => androidx/navigation/NavDeepLinkBuilder
	i64 u0x0322801148f8b287, ; 17 => androidx/activity/result/contract/ActivityResultContract$SynchronousResult
	i64 u0x03cc98b851d4262c, ; 18 => javax/net/ssl/SSLContext
	i64 u0x04048be4ab87bfe3, ; 19 => com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior
	i64 u0x041aa4da751eea19, ; 20 => android/text/style/CharacterStyle
	i64 u0x04aa67fbc8dd2433, ; 21 => androidx/core/app/NotificationCompat$Extender
	i64 u0x05281f2b8ad35705, ; 22 => com/google/android/gms/maps/CameraUpdateFactory
	i64 u0x052f7633c840a026, ; 23 => mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor
	i64 u0x0556c8677413cd01, ; 24 => java/lang/System
	i64 u0x0577cfd0edc0d47c, ; 25 => android/view/View$OnFocusChangeListener
	i64 u0x05b7bd86a8cc40a8, ; 26 => mono/com/google/android/gms/maps/model/FeatureLayer_OnFeatureClickListenerImplementor
	i64 u0x05d7cf579549a87a, ; 27 => crc6452ffdc5b34af3a0f/MauiWindowInsetListener
	i64 u0x05dce036569f9c03, ; 28 => androidx/lifecycle/LiveData
	i64 u0x067b9514e9165133, ; 29 => crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener
	i64 u0x06bd9fe58d36a2b4, ; 30 => com/google/android/gms/location/DeviceOrientationRequest
	i64 u0x06c347d38116f240, ; 31 => android/content/res/TypedArray
	i64 u0x06d489c43d721a65, ; 32 => androidx/activity/result/contract/ActivityResultContracts
	i64 u0x06f84afe4273c430, ; 33 => java/net/InetSocketAddress
	i64 u0x07179950fcb0a4c2, ; 34 => com/google/android/gms/common/api/ResultCallback
	i64 u0x0739ad5d57f8f5c2, ; 35 => androidx/appcompat/widget/AppCompatImageView
	i64 u0x07a8c493b56d1ddf, ; 36 => com/google/android/gms/maps/model/StrokeStyle
	i64 u0x07ccfc99029994fb, ; 37 => androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo
	i64 u0x07ede16120373a51, ; 38 => androidx/appcompat/view/menu/SubMenuBuilder
	i64 u0x07ef5b05ad9e876c, ; 39 => com/google/android/gms/maps/GoogleMap$OnCameraIdleListener
	i64 u0x083e83bb2321dd50, ; 40 => java/util/Random
	i64 u0x084bde0945f24428, ; 41 => androidx/navigation/fragment/FragmentNavigator$Destination
	i64 u0x087fb80a227e5598, ; 42 => android/view/OrientationEventListener
	i64 u0x08ba5597603eed52, ; 43 => androidx/core/view/WindowInsetsAnimationControlListenerCompat
	i64 u0x0905261267c34df0, ; 44 => mono/android/content/DialogInterface_OnShowListenerImplementor
	i64 u0x094bbc5afd8d66c7, ; 45 => com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback
	i64 u0x09b247fe94b37abd, ; 46 => mono/android/view/animation/Animation_AnimationListenerImplementor
	i64 u0x09df54a3005226e6, ; 47 => crc640ec207abc449b2ca/ContainerView
	i64 u0x09f386b034c10e2a, ; 48 => java/util/function/IntFunction
	i64 u0x0a0991adfec5ebd3, ; 49 => mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor
	i64 u0x0a364502506e12a9, ; 50 => android/os/CancellationSignal
	i64 u0x0a8602f2e894a9bc, ; 51 => crc64e1fb321c08285b90/ListViewAdapter
	i64 u0x0a8a26238002df46, ; 52 => crc6452ffdc5b34af3a0f/MauiScrollView
	i64 u0x0ab77b7a4f03d9cf, ; 53 => android/widget/Adapter
	i64 u0x0af6bbc9a990389a, ; 54 => androidx/recyclerview/widget/RecyclerView$ViewCacheExtension
	i64 u0x0b0564f1b7e44272, ; 55 => crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks
	i64 u0x0b1da699fb29019a, ; 56 => android/os/BaseBundle
	i64 u0x0b54d616c48ecf82, ; 57 => com/google/android/gms/maps/model/CircleOptions
	i64 u0x0b6d47b337d450b1, ; 58 => androidx/lifecycle/viewmodel/ViewModelInitializer
	i64 u0x0b7577088357f3f9, ; 59 => androidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab
	i64 u0x0b821ae2cca6f82f, ; 60 => android/content/DialogInterface$OnCancelListener
	i64 u0x0b95355201e1cdcc, ; 61 => com/google/android/gms/maps/CameraUpdate
	i64 u0x0b95dc6056abf25b, ; 62 => android/widget/FrameLayout
	i64 u0x0bcf593ba778d90f, ; 63 => kotlinx/coroutines/flow/MutableStateFlow
	i64 u0x0c44130caa233945, ; 64 => mono/android/runtime/JavaObject
	i64 u0x0c6bd98168627900, ; 65 => android/text/InputFilter
	i64 u0x0c85b86a8e0eff58, ; 66 => com/google/android/material/appbar/HeaderBehavior
	i64 u0x0d9335f0988cd796, ; 67 => java/util/HashMap
	i64 u0x0d9e37c6bdb77f79, ; 68 => crc645d80431ce5f73f11/SimpleItemTouchHelperCallback
	i64 u0x0e38d8eb3df32a4b, ; 69 => com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener
	i64 u0x0e5c9d3e1856a395, ; 70 => com/google/android/gms/maps/GoogleMap$OnCameraMoveListener
	i64 u0x0e69182a0612bdd6, ; 71 => android/content/DialogInterface$OnDismissListener
	i64 u0x0ec3cd3f9f5973bd, ; 72 => android/graphics/drawable/GradientDrawable$Orientation
	i64 u0x0ed9459c549526c1, ; 73 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat
	i64 u0x0eda567aa6841ee4, ; 74 => android/graphics/Region$Op
	i64 u0x0ee5ee864926cdee, ; 75 => android/graphics/Path$FillType
	i64 u0x0f17a8f7ec719595, ; 76 => com/google/android/material/tabs/TabLayout$TabView
	i64 u0x0f3fd32f189104c9, ; 77 => com/google/android/material/appbar/ViewOffsetBehavior
	i64 u0x0f76e24fc1b42556, ; 78 => android/text/SpannableStringInternal
	i64 u0x0fadbb0fc73b9813, ; 79 => com/google/android/gms/maps/GoogleMap$OnMapCapabilitiesChangedListener
	i64 u0x0fbb00760377c24f, ; 80 => kotlinx/coroutines/flow/FlowCollector
	i64 u0x0fbc66cd2b1b4e77, ; 81 => androidx/recyclerview/widget/ItemTouchHelper
	i64 u0x0fbd1a2d794a9718, ; 82 => android/widget/ListAdapter
	i64 u0x0fc3f48bd51825ba, ; 83 => androidx/recyclerview/widget/LinearSnapHelper
	i64 u0x0fde55aa845991e2, ; 84 => android/graphics/drawable/Drawable$ConstantState
	i64 u0x0fdf6e61cfd83719, ; 85 => crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener
	i64 u0x1014bd1f67aeb8ec, ; 86 => crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling
	i64 u0x102731205d6f1f1c, ; 87 => android/graphics/Path
	i64 u0x103d8579c39974d7, ; 88 => androidx/core/view/DisplayCutoutCompat
	i64 u0x1050b555cc009f77, ; 89 => crc6452ffdc5b34af3a0f/MauiSwipeView
	i64 u0x106be7c89662702e, ; 90 => java/net/Proxy$Type
	i64 u0x1078e28e298b88ed, ; 91 => com/google/android/gms/maps/model/PointOfInterest
	i64 u0x107b4c2c21d9edc5, ; 92 => android/os/PersistableBundle
	i64 u0x109c056c6dd543bd, ; 93 => crc6452ffdc5b34af3a0f/MauiMaterialButton_MauiResizableDrawable
	i64 u0x10c9b82608fa3cb1, ; 94 => crc64b5e713d400f589b7/MauiDrawable
	i64 u0x10cc64dc53558d33, ; 95 => android/content/ComponentName
	i64 u0x10e015905ca8bd0f, ; 96 => java/security/cert/Certificate
	i64 u0x10e1dea8929df694, ; 97 => android/graphics/drawable/DrawableContainer
	i64 u0x110217f9f8accd72, ; 98 => android/view/WindowInsetsController
	i64 u0x1129f447a445239d, ; 99 => crc64fcf28c0e24b4cc31/HybridWebViewHandler_HybridWebViewJavaScriptInterface
	i64 u0x116532ec07ee0771, ; 100 => java/security/spec/KeySpec
	i64 u0x116c2eefcbe49da3, ; 101 => crc645d80431ce5f73f11/SelectableItemsViewAdapter_2
	i64 u0x1180f07c8e6b509c, ; 102 => android/graphics/drawable/GradientDrawable
	i64 u0x11925d211cff983d, ; 103 => com/google/android/gms/common/api/internal/ListenerHolder$Notifier
	i64 u0x11b3df35e5eac800, ; 104 => androidx/appcompat/app/ActionBar$OnNavigationListener
	i64 u0x11cef49ec24439a7, ; 105 => androidx/core/graphics/Insets
	i64 u0x11d17bb5232d3c3a, ; 106 => android/view/ContentInfo
	i64 u0x11ea3ec2f9841e81, ; 107 => android/view/View$OnLayoutChangeListener
	i64 u0x126fd2f9b666ff17, ; 108 => android/text/style/MetricAffectingSpan
	i64 u0x1280a30643599898, ; 109 => androidx/recyclerview/widget/SnapHelper
	i64 u0x12c273589e7bbe16, ; 110 => android/view/DragEvent
	i64 u0x12d291163c1f15a6, ; 111 => crc64e1fb321c08285b90/EntryCellView
	i64 u0x12f689238a395eea, ; 112 => androidx/appcompat/widget/SearchView$OnSuggestionListener
	i64 u0x13325e9f8e28a522, ; 113 => mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor
	i64 u0x134fb5354fb590b7, ; 114 => kotlin/reflect/KCallable
	i64 u0x1377bd48a9f09d19, ; 115 => androidx/recyclerview/widget/RecyclerView$OnScrollListener
	i64 u0x139c4260314b273d, ; 116 => android/app/Person
	i64 u0x13e5902d3b855db6, ; 117 => javax/net/ssl/TrustManagerFactory
	i64 u0x13e7a20cea38d010, ; 118 => kotlin/reflect/KFunction
	i64 u0x146350135c295cb0, ; 119 => android/animation/Animator$AnimatorListener
	i64 u0x14967cd55ee6609b, ; 120 => android/graphics/BitmapShader
	i64 u0x14a2dbe5f9a3fbf9, ; 121 => plugin/LocalNotification/ScheduledAlarmReceiver
	i64 u0x150e9f9d467462d4, ; 122 => java/io/RandomAccessFile
	i64 u0x153e49dbb8e6edc2, ; 123 => com/google/android/gms/maps/model/BitmapDescriptor
	i64 u0x15682bdd2dfb6d3f, ; 124 => android/widget/RemoteViews
	i64 u0x15771589264f32c6, ; 125 => java/util/List
	i64 u0x15a72ef629eb70a6, ; 126 => com/google/android/gms/common/api/internal/RegisterListenerMethod
	i64 u0x1644b711fd942b58, ; 127 => crc645d80431ce5f73f11/EdgeSnapHelper
	i64 u0x16698ccdb078d100, ; 128 => androidx/core/app/ActivityOptionsCompat
	i64 u0x167be582da7ac6ee, ; 129 => android/view/WindowInsetsController$OnControllableInsetsChangedListener
	i64 u0x16b07129ee36476e, ; 130 => android/os/PowerManager
	i64 u0x16c70a05a8455695, ; 131 => android/view/inputmethod/InputMethodManager
	i64 u0x1709693bced8b619, ; 132 => android/view/animation/Animation
	i64 u0x174604f06b155d44, ; 133 => androidx/core/app/NotificationCompat
	i64 u0x1759b71b41bc5f1b, ; 134 => android/content/pm/PackageItemInfo
	i64 u0x17948f96f25227f0, ; 135 => crc64f728827fec74e9c3/Toolbar_Container
	i64 u0x17aa38519ad92db2, ; 136 => javax/net/ssl/SSLEngine
	i64 u0x17baebf9734ef906, ; 137 => kotlinx/serialization/KSerializer
	i64 u0x17d515a2d5a2d88d, ; 138 => crc64ba438d8f48cf7e75/ActivityResultCallback_1
	i64 u0x17e1aa318b621d80, ; 139 => androidx/lifecycle/LifecycleOwner
	i64 u0x1830778aad99d496, ; 140 => androidx/lifecycle/ViewModelProvider
	i64 u0x185237d1f7039943, ; 141 => com/google/android/gms/maps/model/FeatureStyle$Builder
	i64 u0x1894ae5633dd844a, ; 142 => mono/com/google/android/gms/common/api/PendingResult_StatusListenerImplementor
	i64 u0x1895f55b7520a32a, ; 143 => android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo
	i64 u0x18c2a1de38f367ba, ; 144 => crc64e1fb321c08285b90/TableViewModelRenderer
	i64 u0x190f07cff0012f30, ; 145 => crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener
	i64 u0x193ea5b13d78ca47, ; 146 => androidx/appcompat/view/menu/MenuPresenter
	i64 u0x194b32fbae047fc7, ; 147 => net/dot/jni/internal/JavaProxyObject
	i64 u0x1950fac852291891, ; 148 => android/view/WindowInsetsAnimationControlListener
	i64 u0x1988fd6de4e3c3c2, ; 149 => com/google/android/gms/common/api/internal/zabs
	i64 u0x1a49d63abc7952ea, ; 150 => android/webkit/MimeTypeMap
	i64 u0x1a65dab33401d766, ; 151 => androidx/navigation/NavController$OnDestinationChangedListener
	i64 u0x1aaa6a9aa98275b2, ; 152 => com/google/android/material/appbar/AppBarLayout$ChildScrollEffect
	i64 u0x1b89ef46042e2c03, ; 153 => android/text/method/MetaKeyKeyListener
	i64 u0x1cbdcf00c44f2034, ; 154 => androidx/lifecycle/Observer
	i64 u0x1d77376ed3d87b0f, ; 155 => com/google/android/gms/maps/model/StampStyle
	i64 u0x1da654e027889141, ; 156 => crc640ec207abc449b2ca/ShellFlyoutRenderer
	i64 u0x1dc163de5519f3ef, ; 157 => com/google/android/material/shape/CornerSize
	i64 u0x1df6cb381b21c3e5, ; 158 => crc6452ffdc5b34af3a0f/LayoutViewGroup
	i64 u0x1e0000284caa3573, ; 159 => android/os/LocaleList
	i64 u0x1e04bf19f9c14045, ; 160 => android/util/AttributeSet
	i64 u0x1e1f05d922188e83, ; 161 => mono/com/google/android/gms/maps/GoogleMap_OnMarkerClickListenerImplementor
	i64 u0x1e25af870a8898ca, ; 162 => android/animation/ValueAnimator$DurationScaleChangeListener
	i64 u0x1e549855226528a2, ; 163 => java/io/InterruptedIOException
	i64 u0x1e69018626ef9ffb, ; 164 => android/os/Handler
	i64 u0x1e72ebd893590a84, ; 165 => mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor
	i64 u0x1e957b3efd87ae08, ; 166 => android/content/res/ColorStateList
	i64 u0x1ed94df1d9fa38c4, ; 167 => java/text/NumberFormat
	i64 u0x1eef7492beaf81e2, ; 168 => android/os/IInterface
	i64 u0x1f76a92524b92e96, ; 169 => android/graphics/Region
	i64 u0x1fb6522f1211b131, ; 170 => androidx/core/view/WindowInsetsCompat
	i64 u0x1fee93cd430d253b, ; 171 => com/google/android/gms/maps/model/FeatureLayer
	i64 u0x200b5727de91a787, ; 172 => com/google/android/gms/maps/model/PolygonOptions
	i64 u0x2060e7b63e4ce25d, ; 173 => com/google/android/material/dialog/MaterialAlertDialogBuilder
	i64 u0x208c2e59c4c6d758, ; 174 => java/util/function/ToIntFunction
	i64 u0x20d01704d0a69229, ; 175 => com/google/android/gms/common/api/Status
	i64 u0x211719e0e41e966a, ; 176 => android/graphics/drawable/StateListDrawable
	i64 u0x218f07bbf08c531e, ; 177 => kotlin/coroutines/CoroutineContext$Key
	i64 u0x21b381333982058e, ; 178 => javax/net/SocketFactory
	i64 u0x22436d73eb9797a7, ; 179 => android/content/IntentFilter
	i64 u0x225c20a45cb91cd7, ; 180 => java/lang/Error
	i64 u0x228edb5145b4bbc1, ; 181 => android/view/InputEvent
	i64 u0x229217c7d0ea93a7, ; 182 => com/google/android/gms/common/api/internal/ConnectionCallbacks
	i64 u0x22f341dcea6f3d85, ; 183 => androidx/core/content/pm/PackageInfoCompat
	i64 u0x23243faa046cf4fb, ; 184 => crc645d80431ce5f73f11/ItemsViewAdapter_2
	i64 u0x234193b9a430beb1, ; 185 => crc645d80431ce5f73f11/MauiCarouselRecyclerView
	i64 u0x2413290612c4bce3, ; 186 => mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor
	i64 u0x24336b0b8aaf4cfe, ; 187 => androidx/appcompat/app/ActionBarDrawerToggle$Delegate
	i64 u0x24519c116d0ca8a6, ; 188 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener
	i64 u0x24d34cdbf04208f8, ; 189 => android/window/InputTransferToken
	i64 u0x24f44152583c2169, ; 190 => androidx/core/view/WindowInsetsCompat$Type
	i64 u0x24f448339156297b, ; 191 => crc645d80431ce5f73f11/EndSingleSnapHelper
	i64 u0x24f7c38731b35c70, ; 192 => com/google/android/material/tabs/TabLayoutMediator
	i64 u0x250f0166bb46cb93, ; 193 => android/webkit/WebChromeClient
	i64 u0x25530a8d502e8309, ; 194 => crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener
	i64 u0x2564914306a7d978, ; 195 => crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat
	i64 u0x258a3fdaab536970, ; 196 => crc64e1fb321c08285b90/BaseCellView
	i64 u0x25be0d44e61e2384, ; 197 => crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper
	i64 u0x25c6e6948f7aabe5, ; 198 => crc64338477404e88479c/ColorChangeRevealDrawable
	i64 u0x266cac67dc7437be, ; 199 => com/google/android/gms/tasks/Task
	i64 u0x26a0cd432f48293f, ; 200 => com/google/android/gms/maps/GoogleMap
	i64 u0x26d52b7ae9ae9bc7, ; 201 => android/webkit/WebMessage
	i64 u0x272ea4375d87e30b, ; 202 => androidx/activity/result/ActivityResultCallback
	i64 u0x2816d8e53463abce, ; 203 => com/google/android/gms/maps/GoogleMap$InfoWindowAdapter
	i64 u0x287bcca10e29c798, ; 204 => android/webkit/CookieManager
	i64 u0x28c47b8c472e0fc4, ; 205 => com/google/android/gms/common/api/Scope
	i64 u0x28cad0b9244cc1b5, ; 206 => android/widget/ListView
	i64 u0x294713a0194d0119, ; 207 => mono/android/animation/AnimatorEventDispatcher
	i64 u0x296b87a36177ce1f, ; 208 => androidx/navigation/NavDeepLink
	i64 u0x2975831afa63f308, ; 209 => android/view/SearchEvent
	i64 u0x297a06a76a1a32e8, ; 210 => crc6452ffdc5b34af3a0f/MauiHybridWebView
	i64 u0x29c713799a61dfd3, ; 211 => android/graphics/PathEffect
	i64 u0x29d10d5373d0de51, ; 212 => android/app/TimePickerDialog
	i64 u0x29d741b98267cff9, ; 213 => crc645d80431ce5f73f11/EmptyViewAdapter
	i64 u0x29eea0438b34229e, ; 214 => android/widget/SearchView
	i64 u0x2a15272bf231e341, ; 215 => android/widget/EditText
	i64 u0x2a5146aae4c9e644, ; 216 => com/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate
	i64 u0x2a863404765de198, ; 217 => android/provider/DocumentsContract
	i64 u0x2aee053a4160bbec, ; 218 => kotlinx/coroutines/flow/Flow
	i64 u0x2bcca4a8219ac237, ; 219 => javax/security/cert/X509Certificate
	i64 u0x2bd1ad3b5c2d27f0, ; 220 => android/graphics/BlendMode
	i64 u0x2bd6f86b4f6cddd5, ; 221 => com/google/android/gms/common/GoogleApiAvailabilityLight
	i64 u0x2bead3961bcf92a8, ; 222 => android/os/VibrationEffect
	i64 u0x2bf6d6708afd9c04, ; 223 => androidx/savedstate/SavedStateRegistry
	i64 u0x2bf6dde72be3597b, ; 224 => crc640ec207abc449b2ca/ShellFlyoutLayout
	i64 u0x2bfb1e07ada83eca, ; 225 => androidx/lifecycle/viewmodel/CreationExtras$Key
	i64 u0x2c0c9dbeeb804874, ; 226 => android/widget/AdapterView
	i64 u0x2c30d6ecce5695fb, ; 227 => java/text/Format
	i64 u0x2c3a98b68817eb58, ; 228 => crc64e1fb321c08285b90/EntryCellEditText
	i64 u0x2c546f8dca46e363, ; 229 => androidx/navigation/NavType
	i64 u0x2ce3c962a914d7c5, ; 230 => crc64f728827fec74e9c3/TapWindowTracker_GestureListener
	i64 u0x2cf8d24c3d21e911, ; 231 => android/text/TextPaint
	i64 u0x2d266277f4578de8, ; 232 => kotlinx/serialization/encoding/Encoder
	i64 u0x2d394d9ef707bb4c, ; 233 => android/widget/AbsSeekBar
	i64 u0x2d6a6698637888af, ; 234 => com/google/android/material/tabs/TabLayout
	i64 u0x2dad289fa6207670, ; 235 => android/text/style/BackgroundColorSpan
	i64 u0x2dec2bee967cc82b, ; 236 => android/media/ExifInterface
	i64 u0x2e7ac01fdc3e9e8d, ; 237 => android/text/style/WrapTogetherSpan
	i64 u0x2eacb325830db74c, ; 238 => android/database/ContentObserver
	i64 u0x2ee44e544e7f31fb, ; 239 => crc645d80431ce5f73f11/SpacingItemDecoration
	i64 u0x2f0981f78fb0e06e, ; 240 => androidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType
	i64 u0x2fba5cf330d023be, ; 241 => com/google/android/gms/common/api/internal/ListenerHolder$ListenerKey
	i64 u0x2ff9fb2c70f4f954, ; 242 => java/lang/SecurityException
	i64 u0x301a44a43e303285, ; 243 => crc645d80431ce5f73f11/SingleSnapHelper
	i64 u0x304444061162dbb8, ; 244 => androidx/appcompat/widget/AppCompatTextView
	i64 u0x304837e8fb4ecd93, ; 245 => com/google/android/gms/common/api/ResultTransform
	i64 u0x305c5602da561beb, ; 246 => mono/com/google/android/gms/maps/GoogleMap_OnInfoWindowCloseListenerImplementor
	i64 u0x3068b2cc16f39dc1, ; 247 => android/view/ContextMenu$ContextMenuInfo
	i64 u0x30abf4d5cd5193ea, ; 248 => kotlin/reflect/KAnnotatedElement
	i64 u0x315ed2c3714b7af8, ; 249 => kotlinx/serialization/encoding/CompositeDecoder
	i64 u0x316137951e53b82f, ; 250 => android/graphics/BlurMaskFilter
	i64 u0x31f6cbff3196a79a, ; 251 => android/content/IntentSender
	i64 u0x321c29cf8c6f7a93, ; 252 => android/content/res/Resources
	i64 u0x322a6d58316feaad, ; 253 => com/google/android/material/shape/ShapePathModel
	i64 u0x3230728ee14feb96, ; 254 => com/google/android/gms/common/api/internal/OnConnectionFailedListener
	i64 u0x329c1734e732eada, ; 255 => com/google/android/gms/common/api/ResultCallbacks
	i64 u0x32d6a1d6ee9f6d5a, ; 256 => android/content/Intent
	i64 u0x32f4c79d0d754da7, ; 257 => android/content/ClipDescription
	i64 u0x332031975eda7654, ; 258 => java/lang/Boolean
	i64 u0x333c1e7a72efe803, ; 259 => com/google/android/material/shape/ShapePath
	i64 u0x33446dc637a16331, ; 260 => android/view/Menu
	i64 u0x33886795bd036f10, ; 261 => android/text/method/MovementMethod
	i64 u0x339314fb190f366a, ; 262 => androidx/appcompat/widget/Toolbar$OnMenuItemClickListener
	i64 u0x33d52fa94ce94e04, ; 263 => androidx/core/internal/view/SupportMenuItem
	i64 u0x33ff30e6692ebacc, ; 264 => androidx/core/widget/NestedScrollView$OnScrollChangeListener
	i64 u0x3436cf09b45d055e, ; 265 => java/security/Principal
	i64 u0x348d00618320f783, ; 266 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat
	i64 u0x34922aa49b075749, ; 267 => androidx/activity/result/ActivityResultLauncher
	i64 u0x3493d4f185c2b950, ; 268 => android/view/animation/LinearInterpolator
	i64 u0x34a4414d9498be08, ; 269 => androidx/core/view/WindowInsetsControllerCompat
	i64 u0x34cf4a3a68102436, ; 270 => com/google/android/gms/maps/model/Polyline
	i64 u0x34d3edeaafb781d0, ; 271 => android/text/InputFilter$LengthFilter
	i64 u0x3546d62b6750666a, ; 272 => crc645d80431ce5f73f11/TextViewHolder
	i64 u0x354fcde9fba66be0, ; 273 => android/content/DialogInterface$OnClickListener
	i64 u0x358fcbc21e1cf763, ; 274 => xamarin/android/net/ServerCertificateCustomValidator_AlwaysAcceptingHostnameVerifier
	i64 u0x35e989807a64bcd9, ; 275 => java/lang/IllegalStateException
	i64 u0x3611feb7c92af67a, ; 276 => android/content/SharedPreferences$Editor
	i64 u0x3655063d24206f71, ; 277 => android/app/DatePickerDialog$OnDateSetListener
	i64 u0x3690c8ddd0de1650, ; 278 => android/util/Pair
	i64 u0x36919b6683653a07, ; 279 => crc6452ffdc5b34af3a0f/SwipeViewPager
	i64 u0x3695825e95d58a86, ; 280 => java/lang/ClassLoader
	i64 u0x36a21a5536d10d64, ; 281 => android/view/LayoutInflater
	i64 u0x374e29f85377aa8d, ; 282 => androidx/activity/BackEventCompat
	i64 u0x37605836d2882b8e, ; 283 => androidx/collection/SparseArrayCompat
	i64 u0x37a602bf21b42ef7, ; 284 => crc6488302ad6e9e4df1a/MauiAppCompatActivity_PredictiveBackCallback
	i64 u0x37b71a054ebc0df3, ; 285 => android/animation/AnimatorListenerAdapter
	i64 u0x37c2da9e97cb47f0, ; 286 => android/text/method/KeyListener
	i64 u0x37ffea827354b6f0, ; 287 => androidx/core/graphics/ColorUtils
	i64 u0x386dd6d7071fbe20, ; 288 => com/google/android/gms/maps/model/LatLng
	i64 u0x38a041da7c763f23, ; 289 => android/view/animation/Animation$AnimationListener
	i64 u0x38a444992a5ec975, ; 290 => androidx/recyclerview/widget/GridLayoutManager
	i64 u0x38bd0b281100230c, ; 291 => androidx/recyclerview/widget/RecyclerView$OnItemTouchListener
	i64 u0x38efa7482f45a90d, ; 292 => crc640ec207abc449b2ca/CustomFrameLayout
	i64 u0x38f8abd8c74c4199, ; 293 => androidx/core/widget/CompoundButtonCompat
	i64 u0x3904a04f5caccc84, ; 294 => android/view/animation/AnimationUtils
	i64 u0x39598be8860f4637, ; 295 => androidx/fragment/app/FragmentHostCallback
	i64 u0x399255970a652898, ; 296 => android/view/View$DragShadowBuilder
	i64 u0x39dbe19d3527efd8, ; 297 => com/google/android/gms/maps/model/Feature
	i64 u0x39f1c81500ddb55b, ; 298 => [F
	i64 u0x3a5f163c839674eb, ; 299 => crc6452ffdc5b34af3a0f/MauiPickerBase
	i64 u0x3a8127906692d290, ; 300 => android/graphics/Matrix
	i64 u0x3a8e7c9f52fffa08, ; 301 => android/text/method/DigitsKeyListener
	i64 u0x3ade0c7da62503ba, ; 302 => crc64338477404e88479c/PointerGestureHandler
	i64 u0x3adeb2cdf503b7b0, ; 303 => com/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener
	i64 u0x3b42d29f06c95015, ; 304 => android/view/accessibility/AccessibilityNodeInfo
	i64 u0x3b4546021c55bbd5, ; 305 => android/text/StaticLayout$Builder
	i64 u0x3b897751150d7c41, ; 306 => crc649ff77a65592e7d55/TabbedPageManager_TempView
	i64 u0x3b9d844dfa2016f5, ; 307 => com/google/android/gms/maps/MapsInitializer
	i64 u0x3bbcf2fd26063dab, ; 308 => androidx/activity/result/ActivityResultRegistry
	i64 u0x3befb3da59a57d28, ; 309 => androidx/navigation/NavArgument
	i64 u0x3c0a89a8a5191a26, ; 310 => androidx/core/app/NotificationCompat$BigTextStyle
	i64 u0x3c26f488127fabb3, ; 311 => crc640ec207abc449b2ca/ShellContentFragment
	i64 u0x3cbc5ad3e546be58, ; 312 => crc64338477404e88479c/MultiPageFragmentStateAdapter_1
	i64 u0x3cd77bf1c083c801, ; 313 => androidx/activity/result/PickVisualMediaRequest
	i64 u0x3d671e7233f17019, ; 314 => crc64e1fb321c08285b90/CellAdapter
	i64 u0x3d6c541ff5df241e, ; 315 => android/view/contentcapture/ContentCaptureSession
	i64 u0x3e48520699aeb266, ; 316 => android/graphics/Path$Op
	i64 u0x3e63d052c6c91768, ; 317 => android/graphics/drawable/shapes/RectShape
	i64 u0x3ea0e9f234b8572a, ; 318 => android/graphics/DashPathEffect
	i64 u0x3ef4d22bf3b2260b, ; 319 => android/webkit/WebResourceResponse
	i64 u0x3f779d44eaf992b4, ; 320 => com/google/android/gms/maps/GoogleMap$OnMyLocationClickListener
	i64 u0x3f97d8ee32f8b25b, ; 321 => android/view/ViewParent
	i64 u0x400d948c9d7f86fc, ; 322 => android/text/method/NumberKeyListener
	i64 u0x406e54c64b3bee74, ; 323 => android/runtime/JavaProxyThrowable
	i64 u0x40b96fc75df9616d, ; 324 => android/view/GestureDetector$OnGestureListener
	i64 u0x40c05cff47992547, ; 325 => android/view/ViewGroup
	i64 u0x40c4abef6882651c, ; 326 => com/google/android/gms/maps/GoogleMapOptions
	i64 u0x40e478bf1fb132e1, ; 327 => crc64e1fb321c08285b90/TextCellRenderer_TextCellView
	i64 u0x4102c960330b5936, ; 328 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener
	i64 u0x412d3dac9f7de53a, ; 329 => android/view/View$OnScrollChangeListener
	i64 u0x415e631ae10d9777, ; 330 => androidx/fragment/app/FragmentTransaction
	i64 u0x41ac0ab939dc266a, ; 331 => android/view/MenuItem$OnActionExpandListener
	i64 u0x41bebe9788d0065d, ; 332 => java/util/concurrent/Future
	i64 u0x41d091ef7039ab94, ; 333 => java/net/URLConnection
	i64 u0x41ebcd9abfe3ee7f, ; 334 => androidx/core/content/LocusIdCompat
	i64 u0x4209344bc1b095c1, ; 335 => java/net/ProtocolException
	i64 u0x42137b145d72ced0, ; 336 => com/google/android/gms/maps/UiSettings
	i64 u0x42281d946d89f4bf, ; 337 => android/text/StaticLayout
	i64 u0x429b5b2c594b5a97, ; 338 => com/google/android/gms/maps/model/LatLngBounds
	i64 u0x42ccc2c64993f27f, ; 339 => android/animation/ValueAnimator$AnimatorUpdateListener
	i64 u0x42e91d1f598314ca, ; 340 => android/database/DataSetObserver
	i64 u0x4308d2f3d6c7dd23, ; 341 => com/google/android/gms/maps/model/Polygon
	i64 u0x4326e660e16a4f2a, ; 342 => kotlin/jvm/functions/Function2
	i64 u0x439a14affe23e7c0, ; 343 => androidx/appcompat/view/ActionMode$Callback
	i64 u0x43b039b3078a25e0, ; 344 => androidx/viewpager/widget/PagerAdapter
	i64 u0x43bf06faa05dffed, ; 345 => androidx/loader/content/Loader
	i64 u0x440eda1cb69308a3, ; 346 => androidx/fragment/app/FragmentManager
	i64 u0x441028a345627265, ; 347 => androidx/viewpager2/widget/ViewPager2$PageTransformer
	i64 u0x4441839b2d7612df, ; 348 => com/google/android/gms/common/api/internal/zal
	i64 u0x447911f99b272892, ; 349 => androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback
	i64 u0x45cbc3db291fc315, ; 350 => com/google/android/material/internal/ScrimInsetsFrameLayout
	i64 u0x45e22fe78680c395, ; 351 => android/view/animation/BaseInterpolator
	i64 u0x45e88f6bf8474d57, ; 352 => crc64e53d2f592022988e/ConnectivityBroadcastReceiver
	i64 u0x461205d952d52b33, ; 353 => mono/com/google/android/gms/maps/GoogleMap_OnMyLocationChangeListenerImplementor
	i64 u0x461cbd479244c30e, ; 354 => androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup
	i64 u0x46471c60ac99f101, ; 355 => androidx/appcompat/view/menu/MenuItemImpl
	i64 u0x466ea684edace283, ; 356 => com/google/android/gms/tasks/OnSuccessListener
	i64 u0x470c03a43da99875, ; 357 => com/google/android/gms/maps/model/CameraPosition$Builder
	i64 u0x482246ca274ee68f, ; 358 => androidx/activity/contextaware/OnContextAvailableListener
	i64 u0x4834d00c431aa2ab, ; 359 => mono/com/google/android/gms/maps/GoogleMap_OnCameraChangeListenerImplementor
	i64 u0x48e1abb584b78c94, ; 360 => java/io/Writer
	i64 u0x4930daf7c10ff422, ; 361 => android/app/Notification$Builder
	i64 u0x493b3b7b7b57ae6e, ; 362 => com/google/android/gms/maps/LocationSource
	i64 u0x4976930bddc9561a, ; 363 => com/microsoft/maui/PlatformContentViewGroup
	i64 u0x498bbf94c21599c2, ; 364 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat
	i64 u0x49f836b50dc30062, ; 365 => androidx/core/app/ComponentActivity$ExtraData
	i64 u0x4a1368574f17ef4a, ; 366 => crc6452ffdc5b34af3a0f/MauiLayerDrawable
	i64 u0x4a39213a97fe1b2f, ; 367 => java/net/ConnectException
	i64 u0x4a62077e41e01226, ; 368 => android/view/View$OnKeyListener
	i64 u0x4aee09df55dd86b2, ; 369 => android/graphics/RadialGradient
	i64 u0x4af4aa944ee26526, ; 370 => mono/com/google/android/gms/maps/GoogleMap_OnMyLocationButtonClickListenerImplementor
	i64 u0x4b259e47b25e5c84, ; 371 => androidx/appcompat/view/menu/MenuPresenter$Callback
	i64 u0x4b9890541bbe42b9, ; 372 => android/text/SpannableStringBuilder
	i64 u0x4b9f25f301daddd8, ; 373 => androidx/core/view/ViewPropertyAnimatorListener
	i64 u0x4bc067aaf3d10a65, ; 374 => androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener
	i64 u0x4bc3254021830535, ; 375 => androidx/fragment/app/Fragment
	i64 u0x4c0f941e09b60a45, ; 376 => mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor
	i64 u0x4c3e8bbf51390507, ; 377 => android/graphics/Path$Direction
	i64 u0x4c6e9166f44886c9, ; 378 => androidx/recyclerview/widget/LinearLayoutManager
	i64 u0x4d3c4bca1c8dea14, ; 379 => kotlin/reflect/KTypeProjection
	i64 u0x4d42113f2af39c56, ; 380 => crc64338477404e88479c/GradientStrokeDrawable
	i64 u0x4d5913834f8ec110, ; 381 => android/content/DialogInterface
	i64 u0x4d9ebcacd375703a, ; 382 => android/app/AlarmManager
	i64 u0x4de23e4f12b0e274, ; 383 => android/text/style/TypefaceSpan
	i64 u0x4e0536d876a0cc54, ; 384 => com/google/android/gms/maps/GoogleMap$OnCircleClickListener
	i64 u0x4e6ec1690cfd5ab7, ; 385 => androidx/fragment/app/FragmentOnAttachListener
	i64 u0x4e7e0c32a0c92595, ; 386 => android/animation/Animator
	i64 u0x4ee5d68bf049f647, ; 387 => android/graphics/PointF
	i64 u0x4f524d01f35394a2, ; 388 => com/google/android/gms/common/api/PendingResult$StatusListener
	i64 u0x4f6287dd50dad825, ; 389 => androidx/core/app/Person
	i64 u0x4f858ea9c9162f43, ; 390 => android/os/IBinder
	i64 u0x4fb6b2906496a2f4, ; 391 => crc645d80431ce5f73f11/ScrollHelper
	i64 u0x5000d515ab59fda0, ; 392 => mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor
	i64 u0x5019a1a65c16cbe8, ; 393 => plugin/LocalNotification/GeofenceTransitionsIntentReceiver
	i64 u0x50292cbe4e8d7a66, ; 394 => com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener
	i64 u0x5034c2e267de44d8, ; 395 => com/google/android/gms/common/api/internal/RemoteCall
	i64 u0x503dca810dbe74b1, ; 396 => com/google/android/gms/common/api/internal/zai
	i64 u0x50c99fed15830727, ; 397 => androidx/appcompat/graphics/drawable/DrawableWrapperCompat
	i64 u0x50d702ac1a779d77, ; 398 => mono/android/content/DialogInterface_OnClickListenerImplementor
	i64 u0x50dc1d14cbccd085, ; 399 => androidx/core/widget/TextViewCompat
	i64 u0x50f723a7c40dabe9, ; 400 => mono/com/google/android/gms/maps/GoogleMap_OnCameraMoveCanceledListenerImplementor
	i64 u0x510b4a194e70a8b9, ; 401 => android/webkit/WebChromeClient$FileChooserParams
	i64 u0x513e52254d0e24b4, ; 402 => android/graphics/drawable/shapes/OvalShape
	i64 u0x516bd5763f07d608, ; 403 => android/net/Uri
	i64 u0x5181b129b1a25949, ; 404 => java/lang/Class
	i64 u0x5184aae28f8d70df, ; 405 => android/text/TextDirectionHeuristic
	i64 u0x5238ad63b58da994, ; 406 => java/lang/ClassCastException
	i64 u0x525031aa556acae7, ; 407 => android/widget/ImageView$ScaleType
	i64 u0x52768a08ff4e126a, ; 408 => com/google/android/gms/common/api/Result
	i64 u0x529da4201fa0d461, ; 409 => net/dot/jni/internal/JavaProxyThrowable
	i64 u0x529e559bd64e4c22, ; 410 => javax/net/ssl/HttpsURLConnection
	i64 u0x52a862f1811707ab, ; 411 => android/graphics/drawable/PaintDrawable
	i64 u0x53358f28c966fd3d, ; 412 => androidx/recyclerview/widget/LinearSmoothScroller
	i64 u0x53a75440048b66bb, ; 413 => mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor
	i64 u0x53cee5bff10d5b09, ; 414 => androidx/lifecycle/SavedStateHandle
	i64 u0x53ead18b9df3fcb2, ; 415 => android/os/IBinder$FrozenStateChangeCallback
	i64 u0x53f1a1773a4ecbf7, ; 416 => android/content/res/Resources$Theme
	i64 u0x53f952e9c06f6806, ; 417 => androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry
	i64 u0x53ffea4cdfcba029, ; 418 => android/widget/CheckBox
	i64 u0x543ee7a3edd80785, ; 419 => android/app/Notification
	i64 u0x548f9b5d4340cd16, ; 420 => android/webkit/WebChromeClient$CustomViewCallback
	i64 u0x54a330334c582676, ; 421 => com/google/android/gms/maps/model/FeatureLayer$StyleFactory
	i64 u0x54ac420c61df93e4, ; 422 => android/text/style/UnderlineSpan
	i64 u0x54c5d3387059fe2c, ; 423 => mono/android/view/View_OnClickListenerImplementor
	i64 u0x54c8b157aaa152c8, ; 424 => androidx/fragment/app/FragmentManager$BackStackEntry
	i64 u0x54f3fe7b69fcb0b9, ; 425 => androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener
	i64 u0x551ac881eb4466c0, ; 426 => java/lang/Number
	i64 u0x5583d0b8a719d478, ; 427 => com/google/android/material/navigation/NavigationBarView
	i64 u0x55ddb295d725c5e7, ; 428 => com/google/android/gms/maps/model/TileOverlay
	i64 u0x55f72f5bdbb6740d, ; 429 => android/webkit/WebResourceRequest
	i64 u0x560a92597b121e00, ; 430 => [C
	i64 u0x56365290d5a06704, ; 431 => java/lang/LinkageError
	i64 u0x5666c9382435fd16, ; 432 => com/google/android/material/checkbox/MaterialCheckBox
	i64 u0x567e316d6f33b908, ; 433 => com/microsoft/maui/PlatformFontSpan
	i64 u0x567fec0de4828e4d, ; 434 => androidx/navigation/NavDestination
	i64 u0x5681ede87251094b, ; 435 => android/graphics/Point
	i64 u0x56b3097a5575b1b4, ; 436 => androidx/fragment/app/strictmode/FragmentStrictMode$Policy
	i64 u0x56b533c7d0de74d4, ; 437 => com/google/android/gms/maps/model/MarkerOptions
	i64 u0x56b969a6299088b8, ; 438 => crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout
	i64 u0x56edd703570382fd, ; 439 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor
	i64 u0x5719cb7a45389d03, ; 440 => android/view/accessibility/AccessibilityRecord
	i64 u0x572c24ab8c2a9676, ; 441 => crc6488302ad6e9e4df1a/ImageLoaderResultCallback
	i64 u0x576383c4738a470c, ; 442 => com/google/android/gms/maps/model/FeatureLayerOptions
	i64 u0x576c258eda52b96d, ; 443 => com/google/android/gms/tasks/SuccessContinuation
	i64 u0x578cde9a6ed73057, ; 444 => android/graphics/ColorFilter
	i64 u0x57df92532fccffd3, ; 445 => mono/com/google/android/gms/maps/GoogleMap_OnPolygonClickListenerImplementor
	i64 u0x57e37830b49b24af, ; 446 => android/app/NotificationChannel
	i64 u0x57fe4a40460344db, ; 447 => android/os/Build$VERSION
	i64 u0x5828ebd38d20bd09, ; 448 => androidx/core/graphics/drawable/IconCompat
	i64 u0x586ab22a14755113, ; 449 => androidx/appcompat/app/ActionBar$Tab
	i64 u0x587b88a96aea462f, ; 450 => androidx/core/view/MenuItemCompat$OnActionExpandListener
	i64 u0x588dc256d5772acc, ; 451 => android/content/pm/Signature
	i64 u0x58a16f68a40a6aaa, ; 452 => androidx/loader/content/Loader$OnLoadCompleteListener
	i64 u0x58cef513210a5ef8, ; 453 => androidx/appcompat/widget/ScrollingTabContainerView
	i64 u0x58eaa41af58865c7, ; 454 => android/view/GestureDetector
	i64 u0x58f3414ff259c4b8, ; 455 => android/view/WindowManager
	i64 u0x5953ba6ba835be62, ; 456 => androidx/appcompat/widget/AppCompatRadioButton
	i64 u0x59c187e6ae5a875c, ; 457 => crc645d80431ce5f73f11/MauiRecyclerView_3
	i64 u0x5a0112c65ffedf51, ; 458 => crc64338477404e88479c/TapAndPanGestureDetector
	i64 u0x5a0481aecc8a3ce2, ; 459 => androidx/activity/ComponentActivity
	i64 u0x5a6af884fe3c181e, ; 460 => android/os/Bundle
	i64 u0x5a77a96ff0678558, ; 461 => crc64b5e713d400f589b7/LinearGradientShaderFactory
	i64 u0x5a792352facc703d, ; 462 => android/view/ScaleGestureDetector
	i64 u0x5aeee04bda9a96eb, ; 463 => com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener
	i64 u0x5b4122135dd0a9b0, ; 464 => androidx/recyclerview/widget/RecyclerView$AdapterDataObserver
	i64 u0x5b4fb71e2ebac7d6, ; 465 => androidx/coordinatorlayout/widget/CoordinatorLayout
	i64 u0x5b7d453913c66b45, ; 466 => com/google/android/gms/maps/GoogleMap$CancelableCallback
	i64 u0x5b7e69dd1ab8b4f8, ; 467 => com/google/android/gms/maps/model/FeatureLayer$OnFeatureClickListener
	i64 u0x5b81bc1333f27da7, ; 468 => android/os/Environment
	i64 u0x5b905726d9bc975f, ; 469 => android/widget/TextView
	i64 u0x5bfd65ae1a6e6ffc, ; 470 => android/app/Activity
	i64 u0x5bff61abc9367a53, ; 471 => android/graphics/drawable/ColorDrawable
	i64 u0x5c2a60c822a3770a, ; 472 => android/view/Choreographer
	i64 u0x5c654b241f6531ca, ; 473 => androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat
	i64 u0x5c8569677495aadb, ; 474 => com/google/android/gms/common/api/internal/zaab
	i64 u0x5c9a08d12cd9a5b9, ; 475 => android/view/ActionProvider
	i64 u0x5cba207f014f46ab, ; 476 => kotlin/jvm/functions/Function0
	i64 u0x5d69ed8fe3d0491a, ; 477 => com/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener
	i64 u0x5d89d4b8c5a3d9db, ; 478 => crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData
	i64 u0x5ddf7f807cfc0078, ; 479 => androidx/drawerlayout/widget/DrawerLayout$DrawerListener
	i64 u0x5e1c513312ebc1b3, ; 480 => android/view/KeyEvent
	i64 u0x5e38b925960b7be9, ; 481 => android/graphics/Rect
	i64 u0x5ee70ac3ebe949b0, ; 482 => androidx/appcompat/app/AlertDialog
	i64 u0x5f5a9fc3430795a4, ; 483 => android/content/ContextWrapper
	i64 u0x5f7e709faf8646e0, ; 484 => java/lang/Short
	i64 u0x5ffcbd49c47f6b92, ; 485 => androidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia
	i64 u0x6026ccdf174d8a44, ; 486 => androidx/fragment/app/Fragment$SavedState
	i64 u0x60512d5bcf66b69d, ; 487 => crc64338477404e88479c/ModalNavigationManager_ModalFragment_CustomComponentDialog
	i64 u0x6052034b1fd2f322, ; 488 => mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor
	i64 u0x606c0552cf86ec9a, ; 489 => androidx/recyclerview/widget/PagerSnapHelper
	i64 u0x60758c46d2753a9b, ; 490 => com/microsoft/maui/PlatformAppCompatTextView
	i64 u0x60f4eef2e292de33, ; 491 => android/graphics/LinearGradient
	i64 u0x61030996527b4bbc, ; 492 => android/app/UiModeManager
	i64 u0x61183bfd8b6bd8fc, ; 493 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter
	i64 u0x612a41da6ab82674, ; 494 => crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment
	i64 u0x61428f9f249ac534, ; 495 => [Z
	i64 u0x6149cc868c1eff6d, ; 496 => android/view/SurfaceControlInputReceiver
	i64 u0x61e294aa76550052, ; 497 => java/util/Comparator
	i64 u0x620acfa7c9394d4b, ; 498 => androidx/customview/widget/Openable
	i64 u0x6219335ac57fb821, ; 499 => java/io/Serializable
	i64 u0x6220c7ea6623515a, ; 500 => com/google/android/material/shape/CornerTreatment
	i64 u0x6260a9d5dac2c97c, ; 501 => androidx/core/view/ViewStructureCompat
	i64 u0x62786550acbd0ea2, ; 502 => com/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable
	i64 u0x6298165c6bad7ccc, ; 503 => com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener
	i64 u0x62daf35c931c09d6, ; 504 => android/content/BroadcastReceiver
	i64 u0x632306ed61138328, ; 505 => android/widget/FrameLayout$LayoutParams
	i64 u0x6324453185ad7528, ; 506 => mono/com/google/android/gms/maps/GoogleMap_OnCameraIdleListenerImplementor
	i64 u0x6328ff2bc58d6ce5, ; 507 => com/google/android/gms/common/api/internal/LifecycleCallback
	i64 u0x6341d902373b98e2, ; 508 => com/google/android/material/tabs/TabLayout$Tab
	i64 u0x6388da2d548d3bd9, ; 509 => androidx/activity/result/PickVisualMediaRequest$Builder
	i64 u0x6398dbf9569985fe, ; 510 => androidx/recyclerview/widget/RecyclerView$LayoutManager
	i64 u0x63a4d78ba35c4679, ; 511 => androidx/core/view/ActionProvider$SubUiVisibilityListener
	i64 u0x6408578172862f8d, ; 512 => java/lang/Void
	i64 u0x64b068dd4783bc6b, ; 513 => androidx/appcompat/widget/SearchView$OnQueryTextListener
	i64 u0x64c00bc444043335, ; 514 => com/google/android/gms/common/util/BiConsumer
	i64 u0x65000cc5a2c8264c, ; 515 => com/google/android/gms/tasks/CancellationToken
	i64 u0x6517c35353b9c5e6, ; 516 => crc6452ffdc5b34af3a0f/ScopedFragment
	i64 u0x6531c3e6b4a10d86, ; 517 => android/app/AlertDialog$Builder
	i64 u0x6582dfd3e9045b28, ; 518 => androidx/core/view/DragAndDropPermissionsCompat
	i64 u0x6586889e8594dad8, ; 519 => android/widget/BaseAdapter
	i64 u0x658dbda6541675f0, ; 520 => android/graphics/Paint$FontMetricsInt
	i64 u0x659c2abe67a29887, ; 521 => java/lang/Iterable
	i64 u0x65b48068a8beab4c, ; 522 => org/xmlpull/v1/XmlPullParserException
	i64 u0x65f1fa0f9cc5885a, ; 523 => android/media/RingtoneManager
	i64 u0x65f6b14b7e978927, ; 524 => java/io/IOException
	i64 u0x6644abc9d0e95e0f, ; 525 => crc642146c9879e6033f2/MainApplication
	i64 u0x665e90753f8d897c, ; 526 => androidx/core/view/accessibility/AccessibilityNodeProviderCompat
	i64 u0x665f83e363ae9dac, ; 527 => android/graphics/Shader
	i64 u0x667b50f3f2edbb73, ; 528 => android/graphics/drawable/ShapeDrawable$ShaderFactory
	i64 u0x6764a13a5d25a65c, ; 529 => androidx/recyclerview/widget/RecyclerView$ItemDecoration
	i64 u0x67765cb3732f0b32, ; 530 => android/text/Layout$Alignment
	i64 u0x6787d5711d908cba, ; 531 => com/google/android/gms/location/DeviceOrientationListener
	i64 u0x67a9791269b8a1ec, ; 532 => com/google/android/gms/common/GoogleApiAvailability
	i64 u0x67c5c443ac918416, ; 533 => com/google/android/gms/maps/model/IndoorLevel
	i64 u0x67dc7ca4607a2fb3, ; 534 => crc6452ffdc5b34af3a0f/MauiHybridWebViewClient
	i64 u0x683b34ba77d878ed, ; 535 => java/util/concurrent/TimeUnit
	i64 u0x683ec3c5964ae14b, ; 536 => android/view/MenuItem$OnMenuItemClickListener
	i64 u0x6855fe4074b200b4, ; 537 => crc64b5e713d400f589b7/RadialGradientShaderFactory
	i64 u0x6890915f17dcdf32, ; 538 => android/graphics/Bitmap$CompressFormat
	i64 u0x68ac1b9ebadea92e, ; 539 => com/google/android/material/elevation/ElevationOverlayProvider
	i64 u0x68b44b76762752b2, ; 540 => android/app/DatePickerDialog
	i64 u0x68cf9abeceb59cea, ; 541 => androidx/core/text/PrecomputedTextCompat
	i64 u0x68ecfa8074a30aac, ; 542 => com/google/android/gms/maps/GoogleMap$OnCameraMoveCanceledListener
	i64 u0x6922efe928410687, ; 543 => crc64e1fb321c08285b90/ListViewRenderer
	i64 u0x694289036cb573a1, ; 544 => androidx/core/app/NotificationCompat$BigPictureStyle
	i64 u0x698099bd1c6d8d21, ; 545 => crc64e1fb321c08285b90/ConditionalFocusLayout
	i64 u0x69cb765b0e785083, ; 546 => com/google/android/gms/maps/model/GroundOverlayOptions
	i64 u0x6a38c6c5c11ae340, ; 547 => crc6452ffdc5b34af3a0f/StepperHandlerHolder
	i64 u0x6aa7d9af28b4551f, ; 548 => java/net/SocketTimeoutException
	i64 u0x6adf1754236db113, ; 549 => androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback
	i64 u0x6b03329dfc544596, ; 550 => crc6452ffdc5b34af3a0f/MauiWebView
	i64 u0x6b51aa65df315197, ; 551 => com/google/android/material/appbar/HeaderScrollingViewBehavior
	i64 u0x6b6e62f3c48710bf, ; 552 => androidx/navigation/NavInflater
	i64 u0x6bb31a092bd1feb9, ; 553 => androidx/recyclerview/widget/OrientationHelper
	i64 u0x6bb600235e010d5b, ; 554 => android/view/KeyboardShortcutInfo
	i64 u0x6be9c486e045423d, ; 555 => com/google/android/material/appbar/AppBarLayout
	i64 u0x6bed14024a62c9d6, ; 556 => androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy
	i64 u0x6bf4e69d043f6219, ; 557 => androidx/recyclerview/widget/RecyclerView$State
	i64 u0x6c06b5342e9f7a54, ; 558 => com/google/android/gms/common/api/Api$BaseClientBuilder
	i64 u0x6c87c98e7c02707b, ; 559 => androidx/viewpager2/widget/ViewPager2
	i64 u0x6c9ebc339853fa5a, ; 560 => androidx/recyclerview/widget/RecyclerView$RecycledViewPool
	i64 u0x6cfaf400e1425441, ; 561 => androidx/core/app/NotificationCompat$Action
	i64 u0x6d5687238e2037cb, ; 562 => android/text/TextUtils
	i64 u0x6d6e4849a9c9cd73, ; 563 => androidx/fragment/app/FragmentContainerView
	i64 u0x6d736771e9774ab2, ; 564 => androidx/core/view/WindowInsetsAnimationControllerCompat
	i64 u0x6da2d17ddad35bc5, ; 565 => android/os/UserHandle
	i64 u0x6dbc029eb41711b7, ; 566 => crc6452ffdc5b34af3a0f/WrapperView
	i64 u0x6dbcd0082585a8fa, ; 567 => androidx/appcompat/app/ActionBar$LayoutParams
	i64 u0x6dc0577159300216, ; 568 => androidx/appcompat/widget/TooltipCompat
	i64 u0x6e08471d92d44bae, ; 569 => kotlinx/serialization/SerializationStrategy
	i64 u0x6e0fb15bd0f04d15, ; 570 => java/lang/StackTraceElement
	i64 u0x6e5d338a24aafe63, ; 571 => crc6452ffdc5b34af3a0f/NavigationViewFragment
	i64 u0x6e64d524730b0605, ; 572 => androidx/navigation/NavGraph
	i64 u0x6ea4b64ad16a7f22, ; 573 => crc640ec207abc449b2ca/RecyclerViewContainer
	i64 u0x6ef4975bdb7af18f, ; 574 => android/view/MotionEvent
	i64 u0x6ef7816e17e24358, ; 575 => android/graphics/Canvas
	i64 u0x6f2c25bc76a30eb3, ; 576 => mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor
	i64 u0x6f613a87c77307d0, ; 577 => crc645d80431ce5f73f11/MauiCarouselRecyclerView_CarouselViewOnGlobalLayoutListener
	i64 u0x6f7d2d169e2ce1a7, ; 578 => androidx/core/view/ActionProvider$VisibilityListener
	i64 u0x6fc88779b51adf4a, ; 579 => crc645d80431ce5f73f11/CenterSnapHelper
	i64 u0x6ff236a19c39d939, ; 580 => crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener
	i64 u0x700da72fda7f1d48, ; 581 => androidx/navigation/NavDirections
	i64 u0x70119df59a49b73c, ; 582 => android/text/style/SubscriptSpan
	i64 u0x7032dc67abf70231, ; 583 => com/google/android/gms/maps/GoogleMap$OnGroundOverlayClickListener
	i64 u0x703efa6e1ccb459a, ; 584 => android/window/TrustedPresentationThresholds
	i64 u0x7051eff2058593fd, ; 585 => kotlinx/coroutines/flow/StateFlow
	i64 u0x7099dcd62c409c90, ; 586 => androidx/recyclerview/widget/RecyclerView$SmoothScroller
	i64 u0x70a08622aaf16a57, ; 587 => android/provider/MediaStore$Images
	i64 u0x714152b8b4c7f7d6, ; 588 => java/security/KeyFactory
	i64 u0x715a86841a0ffdfc, ; 589 => android/graphics/drawable/DrawableWrapper
	i64 u0x71a366471b83c5b5, ; 590 => android/graphics/PorterDuff$Mode
	i64 u0x71fd27294bda99ec, ; 591 => crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector
	i64 u0x720cd712e1248c34, ; 592 => java/util/Iterator
	i64 u0x72250d9fc64488cb, ; 593 => crc6452ffdc5b34af3a0f/MauiTextView
	i64 u0x7263818030e7e9ae, ; 594 => android/app/Application$ActivityLifecycleCallbacks
	i64 u0x7263b2c269c2bf80, ; 595 => com/google/android/gms/dynamic/IObjectWrapper
	i64 u0x7277a93836a4600e, ; 596 => androidx/core/content/FileProvider
	i64 u0x72891d9bc06c0558, ; 597 => androidx/core/view/WindowInsetsCompat$Builder
	i64 u0x72902a32c8eefca5, ; 598 => mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor
	i64 u0x72a1f916524f134d, ; 599 => android/graphics/MaskFilter
	i64 u0x72c985dde79d5eaf, ; 600 => com/google/android/gms/maps/model/Marker
	i64 u0x72e7e960a538ec81, ; 601 => com/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener
	i64 u0x72eebb0413ddcb57, ; 602 => androidx/core/view/MenuProvider
	i64 u0x72f2a1098fdc8e8d, ; 603 => androidx/core/view/ScrollingView
	i64 u0x73068611c20a1df2, ; 604 => com/google/android/gms/tasks/Continuation
	i64 u0x731d258e71c0cf1e, ; 605 => java/lang/Appendable
	i64 u0x731e5731bb9f500e, ; 606 => com/google/android/gms/location/Geofence$Builder
	i64 u0x733b91fe6ad98558, ; 607 => java/util/SequencedCollection
	i64 u0x734d10277a2fa3c8, ; 608 => crc6452ffdc5b34af3a0f/ContainerView
	i64 u0x7361567496b5302c, ; 609 => crc6495d4f5d63cc5c882/AwaitableTaskCompleteListener_1
	i64 u0x7366b72149b10768, ; 610 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor
	i64 u0x73e318a585bfc2e1, ; 611 => androidx/navigation/fragment/FragmentNavigator
	i64 u0x742016c9b209dd21, ; 612 => crc64338477404e88479c/GenericMenuClickListener
	i64 u0x74fec31fac75a39b, ; 613 => android/os/Message
	i64 u0x75106b52d2e6f9bb, ; 614 => microsoft/maui/platform/MauiNavHostFragment
	i64 u0x7522945af31b2b2c, ; 615 => crc649ff77a65592e7d55/TabbedPageManager_Listeners
	i64 u0x75591c18ddf5e52d, ; 616 => mono/android/TypeManager
	i64 u0x75a8e484d572136c, ; 617 => androidx/core/view/PointerIconCompat
	i64 u0x75c0676a362007df, ; 618 => android/view/ScaleGestureDetector$OnScaleGestureListener
	i64 u0x75c5771f2c4153c9, ; 619 => android/graphics/BlurMaskFilter$Blur
	i64 u0x76011f516f0fd1fa, ; 620 => kotlin/reflect/KType
	i64 u0x7618d20d66679b07, ; 621 => android/view/ActionMode$Callback
	i64 u0x761b62afaf559a51, ; 622 => mono/com/google/android/gms/maps/GoogleMap_OnGroundOverlayClickListenerImplementor
	i64 u0x761f7e1b6e4804f9, ; 623 => androidx/lifecycle/viewmodel/CreationExtras
	i64 u0x763b0c46a0d100da, ; 624 => crc640ec207abc449b2ca/ShellFragmentContainer
	i64 u0x763c2670ea45f55c, ; 625 => android/graphics/drawable/Drawable
	i64 u0x7672ff526305decc, ; 626 => kotlin/coroutines/CoroutineContext
	i64 u0x76954017a7690f90, ; 627 => com/google/android/gms/common/internal/IAccountAccessor
	i64 u0x769858d73eac9d5a, ; 628 => android/widget/AdapterView$OnItemSelectedListener
	i64 u0x7699e204374e476e, ; 629 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder
	i64 u0x76cbd2104dd555ed, ; 630 => android/content/Context
	i64 u0x76cd544434e023e9, ; 631 => android/widget/AbsoluteLayout
	i64 u0x775f4b008c098a1a, ; 632 => androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat
	i64 u0x776fac8615206e88, ; 633 => crc6468b6408a11370c2f/WebAuthenticatorIntermediateActivity
	i64 u0x778cfba384f8d504, ; 634 => androidx/viewpager2/adapter/FragmentStateAdapter
	i64 u0x77e17daf4f2798d3, ; 635 => androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener
	i64 u0x77f013f4840c6e9d, ; 636 => android/widget/SeekBar$OnSeekBarChangeListener
	i64 u0x782ecc3f7b0f1702, ; 637 => crc6452ffdc5b34af3a0f/BorderDrawable
	i64 u0x786e5a40bb3c74ca, ; 638 => android/webkit/ValueCallback
	i64 u0x78a8a09e70ef45d0, ; 639 => androidx/lifecycle/LifecycleObserver
	i64 u0x78bd50b8041f8ec3, ; 640 => android/text/style/StyleSpan
	i64 u0x78f85ce39df68ca7, ; 641 => androidx/activity/OnBackPressedDispatcher
	i64 u0x790004a16b482410, ; 642 => kotlinx/coroutines/flow/SharedFlow
	i64 u0x79010cb7f8e68c03, ; 643 => androidx/core/app/SharedElementCallback
	i64 u0x791b74f32e7c7359, ; 644 => com/google/android/gms/maps/model/TileProvider
	i64 u0x7923685decfc70fb, ; 645 => mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor
	i64 u0x794945e513b3eb18, ; 646 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout
	i64 u0x79641db1672d8063, ; 647 => mono/com/google/android/gms/maps/GoogleMap_OnCameraMoveStartedListenerImplementor
	i64 u0x7977deebacec08ab, ; 648 => androidx/activity/ComponentDialog
	i64 u0x7988fa0f526a36f4, ; 649 => mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor
	i64 u0x799e5cf8387079f0, ; 650 => android/text/format/DateFormat
	i64 u0x79b34d99836b3098, ; 651 => com/google/android/gms/maps/model/PolylineOptions
	i64 u0x79b8e6ed4e0962cc, ; 652 => android/webkit/WebView
	i64 u0x7a3212905c108b7f, ; 653 => com/google/android/gms/location/LocationSettingsRequest
	i64 u0x7a5d42aa9daae09b, ; 654 => crc645d80431ce5f73f11/ItemContentView
	i64 u0x7b20a8c72b4caa3d, ; 655 => crc64338477404e88479c/ModalNavigationManager_ModalFragment
	i64 u0x7b3aeb75b65cbd49, ; 656 => java/security/spec/PKCS8EncodedKeySpec
	i64 u0x7b53f57cf64f2aa7, ; 657 => com/google/android/gms/common/api/GoogleApi
	i64 u0x7b56b4292dd91c4f, ; 658 => androidx/appcompat/app/ActionBar$OnMenuVisibilityListener
	i64 u0x7b7af49dc7612e19, ; 659 => com/google/android/material/bottomnavigation/BottomNavigationMenuView
	i64 u0x7b8a450ef3d3c146, ; 660 => androidx/core/view/WindowInsetsAnimationCompat
	i64 u0x7b90c42bde036cae, ; 661 => [I
	i64 u0x7b925bdca68a0101, ; 662 => java/util/ArrayList
	i64 u0x7bc72d027e66ad3c, ; 663 => android/view/Display
	i64 u0x7c399b8939d0b28d, ; 664 => crc64e1fb321c08285b90/VisualElementRenderer_1
	i64 u0x7c93df30f68cf9a7, ; 665 => javax/security/auth/Subject
	i64 u0x7cae1cf202093246, ; 666 => com/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks
	i64 u0x7cd94466b21ee8db, ; 667 => mono/com/google/android/gms/maps/GoogleMap_OnCameraMoveListenerImplementor
	i64 u0x7d1282be62fee357, ; 668 => android/text/Layout
	i64 u0x7d2c987ae4cd1b0a, ; 669 => androidx/appcompat/app/AppCompatDelegate
	i64 u0x7d8f1e430aa19c68, ; 670 => android/content/ContentProvider
	i64 u0x7dff4c2d4c028447, ; 671 => androidx/appcompat/widget/SearchView$OnCloseListener
	i64 u0x7e0053f5a1f97282, ; 672 => android/util/StateSet
	i64 u0x7e201ad40955df46, ; 673 => android/os/Parcel
	i64 u0x7e4c879754991ea4, ; 674 => com/google/android/gms/maps/OnMapsSdkInitializedCallback
	i64 u0x7e6385a92572b003, ; 675 => com/microsoft/maui/PlatformShadowDrawable
	i64 u0x7eaadfc0d327456a, ; 676 => crc6452ffdc5b34af3a0f/MauiStepper
	i64 u0x7ef93854923e0913, ; 677 => java/util/Locale
	i64 u0x7f0d7baf92a81e22, ; 678 => androidx/viewpager/widget/ViewPager$PageTransformer
	i64 u0x7f1402a2caeb65b4, ; 679 => com/google/android/gms/maps/MapView
	i64 u0x7fc6286783d5249d, ; 680 => java/security/Key
	i64 u0x7fd0c0cbdc4f6c31, ; 681 => crc645d80431ce5f73f11/StartSnapHelper
	i64 u0x7fd6b531797aa365, ; 682 => java/net/URL
	i64 u0x7fe87541d88996c2, ; 683 => com/google/android/gms/common/api/Api$Client
	i64 u0x803c00108539f471, ; 684 => androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener
	i64 u0x8087343f088cdd62, ; 685 => kotlinx/serialization/descriptors/SerialKind
	i64 u0x80b2eff68480f860, ; 686 => androidx/core/app/ComponentActivity
	i64 u0x811a6571399defdf, ; 687 => android/view/ViewTreeObserver
	i64 u0x8153bc8b7219fb52, ; 688 => mono/com/google/android/gms/maps/GoogleMap_OnInfoWindowClickListenerImplementor
	i64 u0x816611be5081e6a6, ; 689 => androidx/loader/content/Loader$OnLoadCanceledListener
	i64 u0x81b9feefc4c8a54b, ; 690 => android/graphics/drawable/AnimationDrawable
	i64 u0x823c54a67f346ebd, ; 691 => android/view/ViewGroup$OnHierarchyChangeListener
	i64 u0x824360861fd72eec, ; 692 => android/media/AudioAttributes
	i64 u0x82437651e84d8ef1, ; 693 => mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor
	i64 u0x826b9f96b7c75470, ; 694 => com/google/android/gms/location/FusedLocationProviderApi
	i64 u0x82812fcd2419589e, ; 695 => crc6452ffdc5b34af3a0f/MauiMaterialContextThemeWrapper
	i64 u0x82d156baaac6b271, ; 696 => com/google/android/material/button/MaterialButton
	i64 u0x82d4b802f5f16be5, ; 697 => androidx/core/view/ContentInfoCompat
	i64 u0x8309ec7591aec493, ; 698 => com/google/android/gms/maps/GoogleMap$OnMapClickListener
	i64 u0x831ac2299215129e, ; 699 => android/text/style/ClickableSpan
	i64 u0x8382b117e5ce1b08, ; 700 => crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick
	i64 u0x8389777d2cbf57e8, ; 701 => kotlin/jvm/internal/markers/KMappedMarker
	i64 u0x83cac6d480fca979, ; 702 => com/google/android/gms/common/api/internal/RegistrationMethods$Builder
	i64 u0x8407971d2e654189, ; 703 => androidx/core/view/contentcapture/ContentCaptureSessionCompat
	i64 u0x84847e4e3d1decde, ; 704 => android/graphics/drawable/Animatable
	i64 u0x849891cbd238b929, ; 705 => crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener
	i64 u0x84a0e1080b630a71, ; 706 => android/util/TypedValue
	i64 u0x84de4b691bbece02, ; 707 => android/view/WindowInsetsAnimation$Bounds
	i64 u0x84f94178aab6cc34, ; 708 => java/lang/CharSequence
	i64 u0x851714794ae293d4, ; 709 => android/content/ContentValues
	i64 u0x852b5457ebdd5c87, ; 710 => android/view/ViewGroup$LayoutParams
	i64 u0x85484318643883ec, ; 711 => mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor
	i64 u0x857af70dddbbfd22, ; 712 => xamarin/android/net/ServerCertificateCustomValidator_TrustManager
	i64 u0x85928bf84afcf5c1, ; 713 => android/text/style/LineHeightSpan
	i64 u0x85dd8de79ce0772c, ; 714 => android/location/Address
	i64 u0x85f0f67c9a393c74, ; 715 => mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor
	i64 u0x85f9114964cd1632, ; 716 => xamarin/android/net/ServerCertificateCustomValidator_TrustManager_FakeSSLSession
	i64 u0x860e72c4b5526bc5, ; 717 => java/lang/ref/Reference
	i64 u0x8630444b8c4fb189, ; 718 => crc640ec207abc449b2ca/ShellSectionRenderer
	i64 u0x865563bd4ea9bc8e, ; 719 => crc64a5df8ade113ad624/MapCallbackHandler
	i64 u0x86b25f085c825fe7, ; 720 => com/google/android/gms/maps/model/StrokeStyle$Builder
	i64 u0x87069f3ed8c4a9d7, ; 721 => com/google/android/gms/common/api/internal/GoogleApiManager
	i64 u0x8757d6a5a0083426, ; 722 => mono/androidx/fragment/app/FragmentOnAttachListenerImplementor
	i64 u0x87d0d77c4f66ab94, ; 723 => com/google/android/gms/maps/GoogleMap$SnapshotReadyCallback
	i64 u0x8817ebe79901b58b, ; 724 => androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener
	i64 u0x888700b03d541d93, ; 725 => java/lang/RuntimeException
	i64 u0x889cf012a76d5159, ; 726 => crc6452ffdc5b34af3a0f/MauiTimePicker
	i64 u0x88bde77f5f286619, ; 727 => com/google/android/gms/common/api/internal/SignInConnectionListener
	i64 u0x88f7510c649f4a97, ; 728 => java/io/InputStream
	i64 u0x8934c4f215102479, ; 729 => androidx/core/content/pm/ShortcutInfoCompat
	i64 u0x89573b2343b833d9, ; 730 => crc6452ffdc5b34af3a0f/MauiBoxView
	i64 u0x895c33d930fba4ec, ; 731 => crc640ec207abc449b2ca/ShellFragmentStateAdapter
	i64 u0x896dd3f945a64fd8, ; 732 => kotlinx/serialization/descriptors/SerialDescriptor
	i64 u0x89b4e5207bc2bd03, ; 733 => crc64e1fb321c08285b90/ViewRenderer_2
	i64 u0x89bb78ecf66b1453, ; 734 => android/view/SurfaceControl
	i64 u0x89dd9f6b9a07e7dc, ; 735 => crc6452ffdc5b34af3a0f/MauiMaterialButton
	i64 u0x8a1490d8574c80bb, ; 736 => com/google/android/material/appbar/AppBarLayout$BaseBehavior
	i64 u0x8a1927818aa18084, ; 737 => javax/net/ssl/KeyManager
	i64 u0x8a3ea3c274e8ce68, ; 738 => java/lang/Character
	i64 u0x8a5349863088c262, ; 739 => androidx/appcompat/app/ActionBarDrawerToggle
	i64 u0x8a5e40ae2bfb60ee, ; 740 => javax/net/ssl/X509TrustManager
	i64 u0x8a6d217b35a9e388, ; 741 => android/app/TimePickerDialog$OnTimeSetListener
	i64 u0x8a827f97b9e96017, ; 742 => crc64ba438d8f48cf7e75/ActivityLifecycleContextListener
	i64 u0x8a89060c7bb2fa66, ; 743 => crc6452ffdc5b34af3a0f/MauiShapeView
	i64 u0x8abed19b023ffa85, ; 744 => androidx/core/util/Pair
	i64 u0x8b19535a18cad867, ; 745 => mono/com/google/android/gms/maps/GoogleMap_OnPolylineClickListenerImplementor
	i64 u0x8bc84b37d30c7ba0, ; 746 => android/widget/ImageButton
	i64 u0x8bdec54f6d32db4a, ; 747 => com/google/android/gms/location/FusedOrientationProviderClient
	i64 u0x8c77114d6dcd93fe, ; 748 => java/util/function/Function
	i64 u0x8c92f6338e96a4a1, ; 749 => com/google/android/material/navigation/NavigationView
	i64 u0x8c9cbedbb1657afd, ; 750 => android/content/pm/ApplicationInfo
	i64 u0x8cb95a4f416937f7, ; 751 => com/google/android/gms/maps/GoogleMap$OnMapLongClickListener
	i64 u0x8ce61e47a9725bab, ; 752 => androidx/recyclerview/widget/RecyclerView$Adapter
	i64 u0x8d02bdee4d42aad5, ; 753 => androidx/lifecycle/ViewModelStoreOwner
	i64 u0x8d336818f5dae75a, ; 754 => androidx/recyclerview/widget/RecyclerView
	i64 u0x8d3ef13fbeef669c, ; 755 => androidx/appcompat/view/menu/MenuBuilder$Callback
	i64 u0x8dde213f6a8ff31c, ; 756 => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer
	i64 u0x8df3e8c200a502d7, ; 757 => crc64338477404e88479c/ControlsAccessibilityDelegate
	i64 u0x8e50e4a7e8c43907, ; 758 => com/google/android/gms/location/LocationRequest
	i64 u0x8e795a0bfb2fe84b, ; 759 => androidx/core/os/LocaleListCompat
	i64 u0x8e7a7278f27efaf0, ; 760 => crc6452ffdc5b34af3a0f/FragmentManagerExtensions_CallBacks
	i64 u0x8e80a8cd4be83f8c, ; 761 => android/view/ActionMode
	i64 u0x8ed1624d39198279, ; 762 => android/provider/MediaStore$Audio$Media
	i64 u0x8eedeff2522abc60, ; 763 => kotlinx/serialization/encoding/CompositeDecoder$Companion
	i64 u0x8ef620892da8a06a, ; 764 => android/view/MenuInflater
	i64 u0x8f0cb47bdce20841, ; 765 => android/text/Spanned
	i64 u0x8f51766d700c2991, ; 766 => crc645d80431ce5f73f11/GridLayoutSpanSizeLookup
	i64 u0x8f5224f15feb918a, ; 767 => crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener
	i64 u0x8f6070b59054e406, ; 768 => androidx/core/view/OnApplyWindowInsetsListener
	i64 u0x8fc41936751c807d, ; 769 => crc645d80431ce5f73f11/CarouselViewAdapter_2
	i64 u0x9059b8948625bb9c, ; 770 => androidx/core/content/PermissionChecker
	i64 u0x908b70eb29e74080, ; 771 => com/google/android/gms/maps/model/FeatureClickEvent
	i64 u0x909e0636d2f7af3d, ; 772 => com/google/android/gms/location/LocationListener
	i64 u0x90b4aeb45636cd6a, ; 773 => mono/android/runtime/OutputStreamAdapter
	i64 u0x90b7a39fee5a38a1, ; 774 => crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener
	i64 u0x90c66f160d69bbf7, ; 775 => android/text/style/BulletSpan
	i64 u0x912b555aa0007288, ; 776 => android/view/ViewManager
	i64 u0x9183f81557218751, ; 777 => androidx/core/app/RemoteInput
	i64 u0x91a0de8846e6afce, ; 778 => com/google/android/gms/tasks/OnTokenCanceledListener
	i64 u0x91c38e3191efb825, ; 779 => androidx/core/app/NotificationCompat$BubbleMetadata
	i64 u0x92188d393e2af2d2, ; 780 => java/lang/Throwable
	i64 u0x924fb937aac4a5a0, ; 781 => crc6488302ad6e9e4df1a/ImageLoaderCallback
	i64 u0x92813095d2e27eeb, ; 782 => mono/com/google/android/gms/maps/GoogleMap_OnIndoorStateChangeListenerImplementor
	i64 u0x92b59c839bc46278, ; 783 => java/lang/Thread
	i64 u0x92e4e1723cdc7775, ; 784 => androidx/activity/result/contract/ActivityResultContracts$PickVisualMedia
	i64 u0x935d88e2c2e5941f, ; 785 => crc6488302ad6e9e4df1a/MauiApplication
	i64 u0x93624b42fb99551b, ; 786 => android/widget/Filter
	i64 u0x93ac957223ce8c40, ; 787 => crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver
	i64 u0x943a2b2e5130aba3, ; 788 => java/util/function/ToDoubleFunction
	i64 u0x9461b0401dbcf96c, ; 789 => android/app/Dialog
	i64 u0x94700ca548899cd4, ; 790 => android/app/Notification$BubbleMetadata
	i64 u0x94ab6271293e91f4, ; 791 => android/text/style/StrikethroughSpan
	i64 u0x94efbff2cfad32eb, ; 792 => com/microsoft/maui/PlatformPaintType
	i64 u0x951aa313de8b041c, ; 793 => crc64338477404e88479c/MauiViewPager
	i64 u0x953cea74fbc58714, ; 794 => com/google/android/gms/location/LocationSettingsStates
	i64 u0x9584fc24c466e188, ; 795 => android/graphics/Paint$Cap
	i64 u0x958a431b010b6d71, ; 796 => com/google/android/gms/common/internal/ICancelToken
	i64 u0x958cfc93a38a85bb, ; 797 => com/google/android/gms/maps/model/CameraPosition
	i64 u0x95b5439bde5d2487, ; 798 => com/google/android/gms/common/api/Api$ClientKey
	i64 u0x95d2f3dfe7696497, ; 799 => com/google/android/gms/location/SettingsApi
	i64 u0x965bfaf1ff1da014, ; 800 => java/lang/ReflectiveOperationException
	i64 u0x96cf68019297d3dd, ; 801 => mono/android/content/DialogInterface_OnDismissListenerImplementor
	i64 u0x97074110bc3ca932, ; 802 => com/google/android/gms/common/api/Api$AnyClient
	i64 u0x9776d2ad269f8528, ; 803 => com/google/android/material/internal/StaticLayoutBuilderConfigurer
	i64 u0x97ada2c2479a9b60, ; 804 => kotlin/reflect/KVisibility
	i64 u0x97c9d63fd14dcde7, ; 805 => android/widget/FilterQueryProvider
	i64 u0x97ec84fca1b732f0, ; 806 => mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor
	i64 u0x9858654a6a15b73f, ; 807 => crc645d80431ce5f73f11/StartSingleSnapHelper
	i64 u0x988101eb35e8c40e, ; 808 => androidx/core/view/AccessibilityDelegateCompat
	i64 u0x9891a3a06e139546, ; 809 => androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener
	i64 u0x98a010e964d131c2, ; 810 => com/google/android/gms/maps/Projection
	i64 u0x98ba110c6c57da31, ; 811 => java/lang/Float
	i64 u0x98c586f56c023bec, ; 812 => android/graphics/Bitmap$Config
	i64 u0x98ff485da7f0266f, ; 813 => com/google/android/material/imageview/ShapeableImageView
	i64 u0x9908090bdf73918a, ; 814 => androidx/lifecycle/Lifecycle
	i64 u0x990d68d24a8a5d1f, ; 815 => android/text/style/ParagraphStyle
	i64 u0x993a22f24e2f078c, ; 816 => com/google/android/gms/location/CurrentLocationRequest
	i64 u0x993cc66355ee6a08, ; 817 => com/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl
	i64 u0x995f02becc4146fe, ; 818 => android/content/ClipData
	i64 u0x99b4bc4a856dc9da, ; 819 => android/content/pm/PackageManager
	i64 u0x99df91bab800c287, ; 820 => mono/android/runtime/InputStreamAdapter
	i64 u0x99f0b5bed2bee58d, ; 821 => com/google/android/gms/common/api/TransformedResult
	i64 u0x99f1f38759b3ce7d, ; 822 => java/net/Socket
	i64 u0x99fdf8f921461859, ; 823 => com/google/android/gms/location/LocationAvailability
	i64 u0x9a109edb1710e9bb, ; 824 => com/google/android/gms/location/GeofencingRequest$Builder
	i64 u0x9a23c2d41060f81e, ; 825 => java/io/File
	i64 u0x9a3050da9641e7c4, ; 826 => crc6452ffdc5b34af3a0f/MauiDatePicker
	i64 u0x9a55c691985b1ff7, ; 827 => android/os/Parcelable$Creator
	i64 u0x9a68fa465ca8abf9, ; 828 => java/io/FileDescriptor
	i64 u0x9a8549b14c39d4a5, ; 829 => com/google/android/gms/common/api/internal/zap
	i64 u0x9b63de28f065f8ec, ; 830 => com/google/android/gms/tasks/OnCompleteListener
	i64 u0x9b6492715b9dfccd, ; 831 => androidx/versionedparcelable/CustomVersionedParcelable
	i64 u0x9baa5d4afdfeb64a, ; 832 => androidx/navigation/NavDeepLinkRequest
	i64 u0x9babc3bd2b21d8ad, ; 833 => crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener
	i64 u0x9c437fa042ccf440, ; 834 => androidx/savedstate/SavedStateRegistry$SavedStateProvider
	i64 u0x9c53d1cd43a649b7, ; 835 => com/google/android/gms/maps/model/MapCapabilities
	i64 u0x9c9e4c72b56ff0f4, ; 836 => crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2
	i64 u0x9cb6a0e63a122ff1, ; 837 => android/content/pm/ShortcutInfo
	i64 u0x9cfab72a71a77b1e, ; 838 => androidx/navigation/Navigator$Extras
	i64 u0x9cfb8dda71b9bbdb, ; 839 => mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor
	i64 u0x9d1f43b333e65305, ; 840 => android/text/Spannable
	i64 u0x9d2ad0ade93ac98c, ; 841 => android/location/Geocoder
	i64 u0x9d5ba0f725aa462c, ; 842 => com/google/android/material/appbar/AppBarLayout$Behavior
	i64 u0x9d95a4a1d558550d, ; 843 => com/google/android/gms/location/GeofencingApi
	i64 u0x9db6accc46c9ce7f, ; 844 => java/util/function/Predicate
	i64 u0x9dbfa302c7baf9ec, ; 845 => android/text/GetChars
	i64 u0x9ddb6fe7564e2094, ; 846 => kotlin/reflect/KDeclarationContainer
	i64 u0x9de83fd8b85d70fc, ; 847 => android/widget/SectionIndexer
	i64 u0x9e10a0b3efa170dc, ; 848 => android/view/ContextThemeWrapper
	i64 u0x9e228d9af9dfb6ee, ; 849 => androidx/core/app/Person$Builder
	i64 u0x9e26f9c944b82e69, ; 850 => crc64338477404e88479c/GenericGlobalLayoutListener
	i64 u0x9e6dc3e8eedaf8a8, ; 851 => java/net/SocketException
	i64 u0x9e8497fc52a96d4d, ; 852 => android/graphics/PorterDuff
	i64 u0x9e91524221d7f1f3, ; 853 => com/microsoft/maui/PlatformMauiAppCompatActivity
	i64 u0x9ecc38fa7e43a0c8, ; 854 => androidx/fragment/app/FragmentContainer
	i64 u0x9f21e489cd44cbf2, ; 855 => com/google/android/gms/tasks/OnFailureListener
	i64 u0x9f320c2c164ae334, ; 856 => java/io/FileNotFoundException
	i64 u0x9f4c9bf8c1f6ddb2, ; 857 => androidx/core/view/ViewPropertyAnimatorCompat
	i64 u0x9f5a6b54beec1a29, ; 858 => mono/android/view/View_OnScrollChangeListenerImplementor
	i64 u0x9f5b973045e2d64a, ; 859 => com/google/android/gms/common/api/internal/TaskApiCall
	i64 u0x9f950635a5c6617e, ; 860 => crc6452ffdc5b34af3a0f/MauiAppCompatEditText
	i64 u0x9fa1370a1b1093fa, ; 861 => java/lang/NullPointerException
	i64 u0x9fceb9720ff4752f, ; 862 => androidx/lifecycle/ViewModelStore
	i64 u0x9fffe5ad5d77dedd, ; 863 => android/os/Vibrator
	i64 u0xa00e7a5937597b01, ; 864 => android/net/http/X509TrustManagerExtensions
	i64 u0xa07cbd8408019386, ; 865 => java/net/Proxy
	i64 u0xa0cf83102ab6249f, ; 866 => crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper
	i64 u0xa0e8bade9ecc1b90, ; 867 => androidx/fragment/app/FragmentManager$OnBackStackChangedListener
	i64 u0xa0ef9facbe641466, ; 868 => androidx/core/view/ViewCompat
	i64 u0xa154cf383eb04fb7, ; 869 => com/google/android/gms/location/FusedLocationProviderClient
	i64 u0xa1d27cfd3790b89b, ; 870 => com/google/android/gms/maps/GoogleMap$OnCameraMoveStartedListener
	i64 u0xa1e0d3cfa08f76b0, ; 871 => mono/com/google/android/gms/maps/GoogleMap_OnMapLongClickListenerImplementor
	i64 u0xa1ead478a027c56c, ; 872 => android/animation/ValueAnimator
	i64 u0xa1f5df9f29ce40b8, ; 873 => androidx/navigation/Navigator
	i64 u0xa1f69eeebebd7ca5, ; 874 => android/widget/ProgressBar
	i64 u0xa24d07cd0d5c4f0f, ; 875 => android/animation/TimeInterpolator
	i64 u0xa24ee676f2aaec87, ; 876 => androidx/appcompat/widget/SearchView
	i64 u0xa2c344771af945fc, ; 877 => androidx/activity/FullyDrawnReporter
	i64 u0xa34b4db9fa4732cc, ; 878 => android/graphics/drawable/InsetDrawable
	i64 u0xa3859b5ed9f780d4, ; 879 => androidx/appcompat/widget/LinearLayoutCompat
	i64 u0xa398e93d7065b828, ; 880 => kotlin/Function
	i64 u0xa3ad720d45785742, ; 881 => androidx/appcompat/view/menu/MenuView
	i64 u0xa3ce560621e954d3, ; 882 => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer
	i64 u0xa3d005b2db469996, ; 883 => android/widget/RadioButton
	i64 u0xa3d3c9e462460eb7, ; 884 => android/graphics/Paint$Style
	i64 u0xa3dccd18d267e097, ; 885 => com/google/android/gms/common/api/internal/RegistrationMethods
	i64 u0xa4414bb71bf7bc36, ; 886 => androidx/lifecycle/ViewModelProvider$Factory
	i64 u0xa47433d85b440c29, ; 887 => androidx/core/util/Predicate
	i64 u0xa4cc8b3097166227, ; 888 => android/view/View$OnAttachStateChangeListener
	i64 u0xa4e745bf1607e5a9, ; 889 => android/opengl/Matrix
	i64 u0xa5080403dafe22a0, ; 890 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout
	i64 u0xa5475b5d3e2dd34e, ; 891 => androidx/appcompat/widget/AppCompatAutoCompleteTextView
	i64 u0xa59db4b8b7dbe046, ; 892 => javax/net/ssl/SSLSession
	i64 u0xa66e0e0698158040, ; 893 => androidx/appcompat/app/AlertDialog$Builder
	i64 u0xa6794d1f84bf041d, ; 894 => crc64e1fb321c08285b90/TableViewRenderer
	i64 u0xa6a0445516c94db4, ; 895 => com/google/android/gms/location/LastLocationRequest
	i64 u0xa6b282a2477038a5, ; 896 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener
	i64 u0xa71aafbfe7017e70, ; 897 => com/google/android/material/shape/MaterialShapeDrawable
	i64 u0xa757f83a95bc65d9, ; 898 => kotlin/reflect/KVariance
	i64 u0xa76f26c70ed71676, ; 899 => androidx/appcompat/app/ActionBar$TabListener
	i64 u0xa7fa861f4f28ceae, ; 900 => crc645d80431ce5f73f11/CarouselViewOnScrollListener
	i64 u0xa824ab889bcafcd2, ; 901 => androidx/recyclerview/widget/RecyclerView$LayoutParams
	i64 u0xa865adbdd81d9951, ; 902 => java/io/OutputStream
	i64 u0xa86f66387eaee170, ; 903 => android/content/SharedPreferences
	i64 u0xa8768c3d433d4ef4, ; 904 => com/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener
	i64 u0xa87b56b08c12f7a3, ; 905 => crc64a096dc44ad241142/PlatformTicker_DurationScaleListener
	i64 u0xa8c8380ae261807d, ; 906 => android/widget/TextView$BufferType
	i64 u0xa8cc1540f74ab177, ; 907 => crc640a8d9a12ddbf2cf2/BatteryBroadcastReceiver
	i64 u0xa8d6159bcb046bd9, ; 908 => crc640ec207abc449b2ca/ScrollLayoutManager
	i64 u0xa94960ea73ff5ea8, ; 909 => androidx/navigation/NavGraphNavigator
	i64 u0xa95eae500754348a, ; 910 => java/net/SocketAddress
	i64 u0xa9ac09fff726bffd, ; 911 => android/graphics/Paint$Join
	i64 u0xa9acdba0129a6b21, ; 912 => crc645d80431ce5f73f11/GroupableItemsViewAdapter_2
	i64 u0xa9add6535fbdc611, ; 913 => mono/com/google/android/gms/maps/GoogleMap_OnMapClickListenerImplementor
	i64 u0xa9ce15e4e3a206da, ; 914 => android/text/TextWatcher
	i64 u0xaa1a83b6e613a496, ; 915 => com/google/android/gms/common/api/internal/StatusExceptionMapper
	i64 u0xaa3cafa21a3bea0f, ; 916 => androidx/viewpager/widget/ViewPager
	i64 u0xaa469f39e9e03bd4, ; 917 => androidx/lifecycle/ViewModelProvider$Factory$Companion
	i64 u0xaa46d09246372443, ; 918 => crc6452ffdc5b34af3a0f/ContentViewGroup
	i64 u0xaa4d89cb8e2812a6, ; 919 => android/app/NotificationChannelGroup
	i64 u0xaa75ead031784774, ; 920 => javax/net/ssl/SSLSocketFactory
	i64 u0xaa8e001a129a7284, ; 921 => com/google/android/material/navigation/NavigationBarPresenter
	i64 u0xaacdc63773b92c2d, ; 922 => androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams
	i64 u0xab2eb899e74adc32, ; 923 => androidx/recyclerview/widget/RecyclerView$RecyclerListener
	i64 u0xabc3cd0f40f748aa, ; 924 => java/lang/String
	i64 u0xabe6d6ebc681adc2, ; 925 => android/runtime/XmlReaderPullParser
	i64 u0xac047f65cff07e9e, ; 926 => android/graphics/PorterDuffXfermode
	i64 u0xac7bbd754d805e27, ; 927 => android/graphics/BitmapFactory
	i64 u0xac7c7e1bdd46f12a, ; 928 => androidx/recyclerview/widget/RecyclerView$ItemAnimator
	i64 u0xac86da7d9cd4863e, ; 929 => androidx/appcompat/app/ActionBar
	i64 u0xac9902bb0e4c5217, ; 930 => java/lang/IllegalArgumentException
	i64 u0xacaf4fe23af1f72a, ; 931 => [S
	i64 u0xacbf549cdef93bef, ; 932 => java/net/HttpURLConnection
	i64 u0xacd730f29146f024, ; 933 => mono/com/google/android/gms/maps/GoogleMap_OnMyLocationClickListenerImplementor
	i64 u0xad8d10280dfccd71, ; 934 => crc6452ffdc5b34af3a0f/ViewFragment
	i64 u0xada6872f699d2ae8, ; 935 => [J
	i64 u0xadb29d4c73f24a8c, ; 936 => com/google/android/material/button/MaterialButton$OnCheckedChangeListener
	i64 u0xadd9ad178698ebdd, ; 937 => com/google/android/gms/location/LocationCallback
	i64 u0xae8c8ca30483ee35, ; 938 => androidx/navigation/NavBackStackEntry
	i64 u0xaeb7c908db1794f0, ; 939 => com/google/android/gms/maps/model/Tile
	i64 u0xaf159c0e995e4702, ; 940 => com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState
	i64 u0xaf1679a039f6fbb9, ; 941 => androidx/appcompat/widget/Toolbar
	i64 u0xaf21fa4d321c1cba, ; 942 => androidx/core/text/PrecomputedTextCompat$Params
	i64 u0xaf66bbae6c107286, ; 943 => java/security/cert/CertificateException
	i64 u0xafbc4e9aed7b37ca, ; 944 => com/google/android/gms/common/api/internal/LifecycleActivity
	i64 u0xafdf04e9229184a3, ; 945 => com/google/android/material/shape/ShapeAppearanceModel$Builder
	i64 u0xb00eab597b120f1c, ; 946 => android/view/KeyboardShortcutGroup
	i64 u0xb02badeb1c97535c, ; 947 => java/lang/Integer
	i64 u0xb0888408f321b943, ; 948 => androidx/appcompat/app/AppCompatDialog
	i64 u0xb1878b1eb093bf36, ; 949 => androidx/navigation/internal/NavContext
	i64 u0xb18d71343ca8e96f, ; 950 => java/lang/Exception
	i64 u0xb1ce05f7b5ec6d11, ; 951 => com/google/android/gms/common/api/internal/zabr
	i64 u0xb1fbc7b14aa88094, ; 952 => com/google/android/gms/common/api/internal/zaaa
	i64 u0xb209d55b71ead22c, ; 953 => android/view/animation/Interpolator
	i64 u0xb20fb4cad9d16d3e, ; 954 => com/google/android/gms/common/api/GoogleApiClient
	i64 u0xb254043df975968d, ; 955 => mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor
	i64 u0xb2a2c4218a8e7d1d, ; 956 => kotlin/sequences/Sequence
	i64 u0xb2b2e615ea3f507a, ; 957 => crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView
	i64 u0xb2b460197d3ce493, ; 958 => java/lang/ref/WeakReference
	i64 u0xb2bfba2c56d4b5dc, ; 959 => androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties
	i64 u0xb2e5c87b55a56110, ; 960 => android/content/LocusId
	i64 u0xb30a9983aabe769e, ; 961 => microsoft/maui/essentials/fileProvider
	i64 u0xb329f158c70397be, ; 962 => androidx/navigation/NavigatorState
	i64 u0xb3369008f4fe1419, ; 963 => androidx/appcompat/app/AppCompatActivity
	i64 u0xb3693705985e8b13, ; 964 => androidx/core/view/accessibility/AccessibilityViewCommand
	i64 u0xb374dc7d92c34054, ; 965 => android/webkit/WebViewClient
	i64 u0xb377ef937a0bfe7d, ; 966 => androidx/navigation/NavController
	i64 u0xb378438cc777bbf0, ; 967 => android/view/WindowManager$LayoutParams
	i64 u0xb3cc0a125aff5a7d, ; 968 => java/util/concurrent/atomic/AtomicReference
	i64 u0xb3d4cbc19434ef12, ; 969 => android/util/SizeF
	i64 u0xb3ea8750328eba6b, ; 970 => android/graphics/RectF
	i64 u0xb3f543d691f25c2c, ; 971 => android/content/DialogInterface$OnShowListener
	i64 u0xb42026236b8f4f29, ; 972 => androidx/drawerlayout/widget/DrawerLayout
	i64 u0xb43bff1eb757d5fb, ; 973 => org/xmlpull/v1/XmlPullParser
	i64 u0xb44c711ce591a772, ; 974 => mono/android/view/View_OnTouchListenerImplementor
	i64 u0xb4792773637390c2, ; 975 => com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener
	i64 u0xb4f47430f94297c1, ; 976 => crc6452ffdc5b34af3a0f/MauiPageControl
	i64 u0xb4fc3e21cc054bc7, ; 977 => android/graphics/Paint
	i64 u0xb54eff3a21a3eefa, ; 978 => androidx/loader/app/LoaderManager$LoaderCallbacks
	i64 u0xb56e3efa284790aa, ; 979 => android/view/WindowInsets
	i64 u0xb56e879bb5d599f3, ; 980 => android/window/OnBackInvokedCallback
	i64 u0xb570f3bf7dea9b6e, ; 981 => mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor
	i64 u0xb5ac04c19de8aabf, ; 982 => android/widget/AbsListView
	i64 u0xb5cc78a6da81db86, ; 983 => androidx/core/view/ScaleGestureDetectorCompat
	i64 u0xb5d8dac277d1a01f, ; 984 => com/google/android/gms/maps/GoogleMap$OnPolylineClickListener
	i64 u0xb5f70e929bb461cf, ; 985 => com/google/android/gms/common/api/internal/TaskApiCall$Builder
	i64 u0xb609cd2eea685fb3, ; 986 => androidx/navigation/ui/AppBarConfiguration$Builder
	i64 u0xb6425fca959ab57e, ; 987 => android/text/TextUtils$TruncateAt
	i64 u0xb6880deb4171acbc, ; 988 => com/google/android/material/shape/EdgeTreatment
	i64 u0xb69237f2a9d74c94, ; 989 => mono/android/view/View_OnKeyListenerImplementor
	i64 u0xb69317d4cbae2478, ; 990 => android/content/res/Configuration
	i64 u0xb6b11675684b5f05, ; 991 => crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1
	i64 u0xb6c4749da9477c3a, ; 992 => [B
	i64 u0xb6ea91db24be70cd, ; 993 => com/microsoft/maui/PlatformWrapperView
	i64 u0xb76b9ac76caa5270, ; 994 => crc64e1fb321c08285b90/FrameRenderer
	i64 u0xb773bd566b4f471e, ; 995 => crc64338477404e88479c/GenericAnimatorListener
	i64 u0xb79687aac992f83a, ; 996 => androidx/viewpager2/adapter/FragmentViewHolder
	i64 u0xb7f60ace3fa0816b, ; 997 => android/view/Window
	i64 u0xb7fc24ca8fecd2c5, ; 998 => mono/android/view/View_OnAttachStateChangeListenerImplementor
	i64 u0xb8107ab7985a8ad7, ; 999 => com/google/android/gms/maps/GoogleMap$OnMapLoadedCallback
	i64 u0xb8782f587a705319, ; 1000 => com/microsoft/maui/PlatformViewGroup
	i64 u0xb8df224d6b778ca3, ; 1001 => android/view/View
	i64 u0xb8f2521e5d90246f, ; 1002 => crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView
	i64 u0xb952c578f3377537, ; 1003 => crc64338477404e88479c/ModalNavigationManager_ModalFragment_CustomComponentDialog_CallBack
	i64 u0xb97377cead771d2e, ; 1004 => com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener
	i64 u0xb988875b46a87e03, ; 1005 => com/google/android/gms/maps/model/PatternItem
	i64 u0xb9cdbe6eddac55c0, ; 1006 => mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor
	i64 u0xb9e48b25660487c5, ; 1007 => javax/net/ssl/TrustManager
	i64 u0xba1eeacb2b756e17, ; 1008 => com/google/android/gms/maps/model/LatLngBounds$Builder
	i64 u0xba263234cbab6d9a, ; 1009 => androidx/navigation/NavDestination$DeepLinkMatch
	i64 u0xba2b762d351eb789, ; 1010 => com/google/android/gms/maps/model/IndoorBuilding
	i64 u0xba79fa9c8b5d21f6, ; 1011 => android/provider/MediaStore$Audio
	i64 u0xbacf55cfc50d3d0b, ; 1012 => kotlin/reflect/KParameter$Kind
	i64 u0xbb31260c87dd2c43, ; 1013 => com/google/android/gms/maps/MapsInitializer$Renderer
	i64 u0xbb41c32523812652, ; 1014 => android/widget/Button
	i64 u0xbb84ccbe48f6c18b, ; 1015 => android/os/Looper
	i64 u0xbbaf4b15fe6e0964, ; 1016 => android/text/SpannableString
	i64 u0xbc201330f4acc6fb, ; 1017 => android/widget/TimePicker
	i64 u0xbc23f0c88f3b93bb, ; 1018 => android/webkit/WebResourceError
	i64 u0xbc7639d7badc3890, ; 1019 => androidx/recyclerview/widget/ItemTouchHelper$Callback
	i64 u0xbc7d00ca5216ea6a, ; 1020 => crc64ba438d8f48cf7e75/IntermediateActivity
	i64 u0xbc89a6074f33c9ca, ; 1021 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat
	i64 u0xbca0894881139cde, ; 1022 => com/google/android/gms/maps/model/VisibleRegion
	i64 u0xbd8eeb1678aa451f, ; 1023 => androidx/core/app/TaskStackBuilder
	i64 u0xbdda3de944afbbe2, ; 1024 => androidx/navigation/NavHostController
	i64 u0xbed3bfe216d862cc, ; 1025 => mono/com/google/android/gms/maps/GoogleMap_OnInfoWindowLongClickListenerImplementor
	i64 u0xbf2634fa5f7ca77a, ; 1026 => mono/android/widget/TextView_OnEditorActionListenerImplementor
	i64 u0xbf6d427143271cb3, ; 1027 => java/lang/Object
	i64 u0xbf9dae2beff68075, ; 1028 => android/graphics/Insets
	i64 u0xbfa60ed6f605b517, ; 1029 => com/google/android/gms/maps/model/Circle
	i64 u0xbfabe918e13a5393, ; 1030 => com/google/android/gms/maps/model/FeatureStyle
	i64 u0xbfadb782d0da8175, ; 1031 => com/google/android/gms/maps/model/StyleSpan
	i64 u0xbfcccc29cac8e8a1, ; 1032 => mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor
	i64 u0xbfee75e113b64f18, ; 1033 => android/widget/SpinnerAdapter
	i64 u0xbfef2f9e217a726a, ; 1034 => com/google/android/gms/location/Geofence
	i64 u0xc00f4c2f11efdcff, ; 1035 => java/lang/ClassNotFoundException
	i64 u0xc012d4a9d397728a, ; 1036 => com/google/android/material/shape/ShapeAppearanceModel
	i64 u0xc0252c5c6e843dc5, ; 1037 => android/provider/MediaStore$Video$Media
	i64 u0xc06a4eb5cda9bea9, ; 1038 => android/media/AudioAttributes$Builder
	i64 u0xc095e5da02b35ab7, ; 1039 => androidx/core/view/accessibility/AccessibilityWindowInfoCompat
	i64 u0xc0d2632c9e89e62f, ; 1040 => crc64e1fb321c08285b90/ListViewRenderer_Container
	i64 u0xc0f8739dda93c69d, ; 1041 => androidx/navigation/NavAction
	i64 u0xc194cf35700f24d1, ; 1042 => android/view/animation/AnimationSet
	i64 u0xc1a43ce814bd6203, ; 1043 => android/content/ClipData$Item
	i64 u0xc1a807325c15cf73, ; 1044 => android/graphics/Bitmap
	i64 u0xc2512364d51a7359, ; 1045 => android/widget/SeekBar
	i64 u0xc267236c282509e3, ; 1046 => com/google/android/gms/common/api/internal/zabk
	i64 u0xc2699473eca9d329, ; 1047 => com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer
	i64 u0xc288a8550f7ef636, ; 1048 => android/view/SubMenu
	i64 u0xc2a8e50a5f08afc6, ; 1049 => mono/java/lang/RunnableImplementor
	i64 u0xc2d2916e08f7fcd5, ; 1050 => android/view/WindowInsetsAnimationController
	i64 u0xc3448e73cf4fda29, ; 1051 => com/google/android/material/bottomnavigation/BottomNavigationItemView
	i64 u0xc34818c06f1f081f, ; 1052 => com/google/android/gms/maps/model/GroundOverlay
	i64 u0xc385d7ec76ca856d, ; 1053 => javax/net/ssl/X509ExtendedTrustManager
	i64 u0xc3a0d1e70fc04a12, ; 1054 => androidx/fragment/app/strictmode/Violation
	i64 u0xc3eb0cbb47f178b9, ; 1055 => java/lang/Enum
	i64 u0xc410281d3f079bb9, ; 1056 => kotlin/reflect/KClassifier
	i64 u0xc439ae0cb0bcce85, ; 1057 => crc64e95e69e34d869711/LocationCallback
	i64 u0xc452ee0901c19a4d, ; 1058 => android/graphics/drawable/LayerDrawable
	i64 u0xc4667e0e3dcb2142, ; 1059 => crc6452ffdc5b34af3a0f/MauiPicker
	i64 u0xc4998152ef9eb5a5, ; 1060 => kotlin/reflect/KParameter
	i64 u0xc4afa1d7df46b131, ; 1061 => com/google/android/gms/location/GeofencingClient
	i64 u0xc4e1d7e4d6990b04, ; 1062 => android/database/Cursor
	i64 u0xc509661f018da630, ; 1063 => androidx/appcompat/widget/AppCompatCheckBox
	i64 u0xc5369e1c8e0778b2, ; 1064 => com/google/android/material/appbar/AppBarLayout$LayoutParams
	i64 u0xc5b5e4b920f555ee, ; 1065 => com/microsoft/maui/PlatformDispatcher
	i64 u0xc606e1058d794da9, ; 1066 => java/lang/AutoCloseable
	i64 u0xc60c9333403c3d74, ; 1067 => crc643f2b18b2570eaa5a/PlatformGraphicsView
	i64 u0xc63933355b4d467d, ; 1068 => android/widget/CompoundButton
	i64 u0xc63d7737310ec2d2, ; 1069 => androidx/appcompat/content/res/AppCompatResources
	i64 u0xc63d8ed5f16cff9f, ; 1070 => android/widget/DatePicker
	i64 u0xc66b28b06af00e09, ; 1071 => crc640ec207abc449b2ca/ShellItemRendererBase
	i64 u0xc68a0ac78e093ec5, ; 1072 => crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener
	i64 u0xc6a64908f989db1f, ; 1073 => java/util/Spliterator
	i64 u0xc6dcfddd28ee4b89, ; 1074 => mono/android/widget/AdapterView_OnItemClickListenerImplementor
	i64 u0xc721b83c1b0725c6, ; 1075 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer
	i64 u0xc7352532882255e4, ; 1076 => androidx/activity/result/contract/ActivityResultContract
	i64 u0xc779d4870911d3d8, ; 1077 => com/google/android/gms/common/api/internal/zacs
	i64 u0xc7e7d72888a9cbd1, ; 1078 => android/view/accessibility/AccessibilityWindowInfo
	i64 u0xc83910308b360de2, ; 1079 => androidx/appcompat/widget/SwitchCompat
	i64 u0xc83bcc1744de4118, ; 1080 => crc640ec207abc449b2ca/ShellToolbarTracker
	i64 u0xc83f7693ddf5a6cb, ; 1081 => crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged
	i64 u0xc8c11b250ce4b41e, ; 1082 => android/view/ScaleGestureDetector$SimpleOnScaleGestureListener
	i64 u0xc8d5c33e136ee12d, ; 1083 => androidx/appcompat/widget/AppCompatImageButton
	i64 u0xc8dabb1ec9568e80, ; 1084 => com/google/android/material/bottomsheet/BottomSheetBehavior
	i64 u0xc9907bd32c160fff, ; 1085 => android/util/Log
	i64 u0xc9f0b2a1b7594f51, ; 1086 => java/util/concurrent/Future$State
	i64 u0xca1b04f394970e73, ; 1087 => com/google/android/gms/common/api/HasApiKey
	i64 u0xca35caf567cfa745, ; 1088 => java/util/Collection
	i64 u0xca754b77efc8606b, ; 1089 => android/app/NotificationManager
	i64 u0xcaacba435aa40fff, ; 1090 => com/google/android/gms/maps/model/Cap
	i64 u0xcabf871ef950ad91, ; 1091 => android/view/View$OnClickListener
	i64 u0xcb502115d02cfb31, ; 1092 => androidx/activity/OnBackPressedCallback
	i64 u0xcb8d1d6001681e7e, ; 1093 => crc645d80431ce5f73f11/TemplatedItemViewHolder
	i64 u0xcbbe7354a1b9c7e3, ; 1094 => androidx/fragment/app/DialogFragment
	i64 u0xcbc34fae61c9b002, ; 1095 => androidx/recyclerview/widget/RecyclerView$ViewHolder
	i64 u0xcbc3764d4a125ef1, ; 1096 => com/google/android/gms/maps/GoogleMap$OnPoiClickListener
	i64 u0xcc306823503920e9, ; 1097 => android/app/Application
	i64 u0xcc3c26b070861b6e, ; 1098 => android/view/ViewPropertyAnimator
	i64 u0xcc886cb26c186236, ; 1099 => mono/com/google/android/gms/maps/GoogleMap_OnPoiClickListenerImplementor
	i64 u0xcc94b924b6f55b54, ; 1100 => android/content/pm/ShortcutManager
	i64 u0xccd0f5b101ef6e90, ; 1101 => android/os/VibratorManager
	i64 u0xcd92b6784e89e015, ; 1102 => com/google/android/gms/maps/LocationSource$OnLocationChangedListener
	i64 u0xcdefa3530f990c69, ; 1103 => androidx/recyclerview/widget/ItemTouchUIUtil
	i64 u0xcdf4fe3b1db1eeb0, ; 1104 => android/view/MenuItem
	i64 u0xce3b78826c33a15b, ; 1105 => android/view/View$MeasureSpec
	i64 u0xce4b3c9d4e20935c, ; 1106 => androidx/navigation/ui/AppBarConfiguration
	i64 u0xce5b601e4e97234c, ; 1107 => com/google/android/gms/maps/model/MapStyleOptions
	i64 u0xce8f455b2f4af3f3, ; 1108 => crc6452ffdc5b34af3a0f/MauiWebChromeClient
	i64 u0xcee19936e5b7407d, ; 1109 => android/graphics/Xfermode
	i64 u0xcefb45e7022310ea, ; 1110 => com/microsoft/maui/HybridJavaScriptInterface
	i64 u0xcf4a3917e4797c13, ; 1111 => androidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener
	i64 u0xcf5118f37190e6ff, ; 1112 => androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks
	i64 u0xcfb9636813513757, ; 1113 => mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor
	i64 u0xcff439665ffdae38, ; 1114 => java/security/GeneralSecurityException
	i64 u0xd0733c320aa3ff03, ; 1115 => mono/android/view/View_OnLayoutChangeListenerImplementor
	i64 u0xd0e722c3b0bde16f, ; 1116 => android/graphics/Typeface
	i64 u0xd0fdb8dd4573f5f7, ; 1117 => android/window/BackEvent
	i64 u0xd119c30f543faaab, ; 1118 => com/google/android/gms/common/api/internal/BasePendingResult
	i64 u0xd1b288a9c7bb8f53, ; 1119 => java/lang/Double
	i64 u0xd1b72c32d5a919d7, ; 1120 => com/google/android/gms/location/SettingsClient
	i64 u0xd1bb565fc45586eb, ; 1121 => android/app/PendingIntent
	i64 u0xd1bc0e21e92a5958, ; 1122 => com/google/android/gms/maps/GoogleMap$OnInfoWindowCloseListener
	i64 u0xd1c6f898302a054f, ; 1123 => crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter
	i64 u0xd202c8ea2a504e12, ; 1124 => android/webkit/WebSettings
	i64 u0xd22f5c0c8def47ff, ; 1125 => android/preference/PreferenceManager
	i64 u0xd23c2ba7064dd9dd, ; 1126 => mono/android/app/DatePickerDialog_OnDateSetListenerImplementor
	i64 u0xd26195c132985edf, ; 1127 => crc6452ffdc5b34af3a0f/MauiHorizontalScrollView
	i64 u0xd294b4da088b36d0, ; 1128 => androidx/core/util/Consumer
	i64 u0xd2fc750314fd2213, ; 1129 => [D
	i64 u0xd3216151c34fd6f8, ; 1130 => androidx/navigation/ui/NavigationUI
	i64 u0xd37bd51464b51f79, ; 1131 => android/graphics/drawable/RippleDrawable
	i64 u0xd39c770b67de9183, ; 1132 => android/app/AlertDialog
	i64 u0xd3c43ee198e77de2, ; 1133 => androidx/appcompat/view/menu/MenuBuilder
	i64 u0xd47e7740ea5266ae, ; 1134 => com/google/android/gms/maps/GoogleMap$OnCameraChangeListener
	i64 u0xd538384fb20ae66c, ; 1135 => java/text/DecimalFormat
	i64 u0xd569f4c12b4fe1ac, ; 1136 => mono/com/google/android/gms/maps/GoogleMap_OnMarkerDragListenerImplementor
	i64 u0xd59ecec99fd063b4, ; 1137 => androidx/navigation/NavOptions
	i64 u0xd5a28b8fa6d48e71, ; 1138 => android/os/Build
	i64 u0xd5bfeae2074a5b36, ; 1139 => android/widget/Filter$FilterResults
	i64 u0xd6621ddc18d98c8b, ; 1140 => androidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VideoOnly
	i64 u0xd6869891e492fac4, ; 1141 => com/google/android/gms/maps/model/FeatureLayerOptions$Builder
	i64 u0xd687dc86c66ae031, ; 1142 => androidx/core/app/NotificationCompat$Style
	i64 u0xd6880b1e41bf57b5, ; 1143 => java/io/Reader
	i64 u0xd6ec414c6f0409db, ; 1144 => androidx/drawerlayout/widget/DrawerLayout$LayoutParams
	i64 u0xd73eadb606b3f155, ; 1145 => androidx/navigation/NavigatorProvider
	i64 u0xd758f43330d4e0ad, ; 1146 => android/graphics/drawable/Icon
	i64 u0xd7bf0ca2c70de05c, ; 1147 => android/util/DisplayMetrics
	i64 u0xd7d412ecfd847e8d, ; 1148 => android/view/WindowInsetsAnimation
	i64 u0xd7e1e4845540748c, ; 1149 => crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper
	i64 u0xd7f6c403483ad98d, ; 1150 => kotlinx/serialization/encoding/CompositeEncoder
	i64 u0xd8541c4cd5bc6e9c, ; 1151 => com/google/android/gms/common/Feature
	i64 u0xd87d062b451a916e, ; 1152 => com/google/android/gms/common/api/GoogleApi$Settings
	i64 u0xd88443e11b25ea33, ; 1153 => java/util/function/UnaryOperator
	i64 u0xd89d02cce1fc7885, ; 1154 => com/google/android/gms/location/LocationSettingsResponse
	i64 u0xd8aaec9071b6abf2, ; 1155 => crc645d80431ce5f73f11/CarouselSpacingItemDecoration
	i64 u0xd8ab954c8665d775, ; 1156 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat
	i64 u0xd93783c2ee1cf63d, ; 1157 => com/google/android/gms/tasks/TaskCompletionSource
	i64 u0xd95d6dc3cf850ced, ; 1158 => android/view/View$AccessibilityDelegate
	i64 u0xd9894fafe0aa82b4, ; 1159 => mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor
	i64 u0xd9aebd86bdaf8ad1, ; 1160 => androidx/fragment/app/FragmentResultListener
	i64 u0xd9af3f71e595db52, ; 1161 => kotlin/reflect/KTypeParameter
	i64 u0xd9bf98f7765a21b1, ; 1162 => android/graphics/drawable/shapes/Shape
	i64 u0xd9f80c7ded36b670, ; 1163 => crc64e1fb321c08285b90/ViewRenderer
	i64 u0xda24dc0f1c8c18bc, ; 1164 => crc640ec207abc449b2ca/ShellItemRenderer
	i64 u0xda68913bc1c106cd, ; 1165 => com/microsoft/maui/PlatformLineHeightSpan
	i64 u0xdba5b410c61ad719, ; 1166 => com/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener
	i64 u0xdbb1cb3e761b7615, ; 1167 => crc645d80431ce5f73f11/PositionalSmoothScroller
	i64 u0xdbb76cb30e7b6509, ; 1168 => android/content/ContentResolver
	i64 u0xdc132bd7fe147400, ; 1169 => androidx/core/graphics/drawable/DrawableCompat
	i64 u0xdc2ee96f4da0943c, ; 1170 => com/google/android/gms/maps/OnMapReadyCallback
	i64 u0xdcbab16d05f31663, ; 1171 => android/app/SearchableInfo
	i64 u0xdcd26815589b81ef, ; 1172 => crc642146c9879e6033f2/MainActivity
	i64 u0xdce51d0c09d90fa8, ; 1173 => com/google/android/material/navigation/NavigationBarMenuView
	i64 u0xdd20fdef9c9ddad0, ; 1174 => com/microsoft/maui/MauiViewGroup
	i64 u0xdd3b9929bc462c67, ; 1175 => crc645d80431ce5f73f11/NongreedySnapHelper
	i64 u0xdd463626e67f1bf6, ; 1176 => androidx/loader/app/LoaderManager
	i64 u0xdd812f1d4afa427b, ; 1177 => java/lang/UnsupportedOperationException
	i64 u0xddbb492979f5c092, ; 1178 => com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener
	i64 u0xdde3ded0ec573476, ; 1179 => androidx/recyclerview/widget/RecyclerView$Recycler
	i64 u0xddeb5e38523313ea, ; 1180 => android/content/DialogInterface$OnKeyListener
	i64 u0xde36efb42da7cc2d, ; 1181 => javax/net/ssl/SSLSessionContext
	i64 u0xde661e8331fec958, ; 1182 => androidx/appcompat/graphics/drawable/DrawerArrowDrawable
	i64 u0xde77d411368f787e, ; 1183 => crc64338477404e88479c/InnerScaleListener
	i64 u0xdeacec4435a8c407, ; 1184 => com/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener
	i64 u0xdee6e35ea742e03e, ; 1185 => androidx/core/app/NotificationCompat$Builder
	i64 u0xdefbe04fed538321, ; 1186 => android/os/SystemClock
	i64 u0xdf57213be15322dd, ; 1187 => android/graphics/Paint$FontMetrics
	i64 u0xdf66791556ac1ec7, ; 1188 => com/google/android/gms/common/api/Api
	i64 u0xdf7a8cd0384eaf2c, ; 1189 => android/view/animation/DecelerateInterpolator
	i64 u0xdfabd9351f4351a6, ; 1190 => [Ljava/lang/Object;
	i64 u0xdfaf21f573fa6730, ; 1191 => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_WindowsListener
	i64 u0xdfecd839d4f3e1a4, ; 1192 => androidx/appcompat/widget/AppCompatButton
	i64 u0xdfef58a3c722a78d, ; 1193 => android/view/ContextMenu
	i64 u0xe024b538ad65ea66, ; 1194 => java/util/function/Consumer
	i64 u0xe0446bf91fb0c2dd, ; 1195 => java/lang/NoClassDefFoundError
	i64 u0xe092996eb02be58a, ; 1196 => android/webkit/RenderProcessGoneDetail
	i64 u0xe0b2becf1de762d8, ; 1197 => kotlinx/serialization/DeserializationStrategy
	i64 u0xe0b600ed9de21982, ; 1198 => com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener
	i64 u0xe0f47e92347d97e9, ; 1199 => android/os/Parcelable
	i64 u0xe116bc26f4f89e46, ; 1200 => androidx/fragment/app/FragmentFactory
	i64 u0xe1224651b2f19e49, ; 1201 => com/google/android/gms/common/api/internal/ListenerHolder
	i64 u0xe149f6bc65d447d8, ; 1202 => androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action
	i64 u0xe156c210e126089c, ; 1203 => android/view/ViewStructure
	i64 u0xe1b04ab6156538aa, ; 1204 => crc64e1fb321c08285b90/CellRenderer_RendererHolder
	i64 u0xe1b3c5871398eb28, ; 1205 => java/nio/channels/FileChannel
	i64 u0xe1bb787ca7ca5fee, ; 1206 => androidx/appcompat/app/AppCompatCallback
	i64 u0xe1bf08ed09c2c547, ; 1207 => android/widget/Filterable
	i64 u0xe1e9b8b006533b8c, ; 1208 => crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult
	i64 u0xe20bb0436b0910f0, ; 1209 => com/google/android/gms/location/LocationResult
	i64 u0xe22bb95540a673ba, ; 1210 => android/window/OnBackInvokedDispatcher
	i64 u0xe28cd0a2e6de00c1, ; 1211 => java/security/KeyStore
	i64 u0xe2c8146fc4e0aa3e, ; 1212 => com/google/android/gms/tasks/OnCanceledListener
	i64 u0xe324013d7e39b88a, ; 1213 => mono/android/content/DialogInterface_OnCancelListenerImplementor
	i64 u0xe351dccbfffb7df1, ; 1214 => crc64338477404e88479c/FragmentContainer
	i64 u0xe37bab6623ca3f34, ; 1215 => androidx/lifecycle/ViewModel
	i64 u0xe3843bf91193455c, ; 1216 => android/util/SparseArray
	i64 u0xe38528954b158fff, ; 1217 => java/util/concurrent/Executor
	i64 u0xe39829b35e720e04, ; 1218 => java/util/function/IntConsumer
	i64 u0xe3b32b29aed12354, ; 1219 => mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor
	i64 u0xe437ac3d638a3fef, ; 1220 => android/text/method/BaseKeyListener
	i64 u0xe4c5b0a99cb44963, ; 1221 => kotlin/reflect/KTypeProjection$Companion
	i64 u0xe4e8702fce78eb3a, ; 1222 => crc640ec207abc449b2ca/ShellSearchViewAdapter
	i64 u0xe5028846deb1244d, ; 1223 => com/microsoft/maui/PlatformLogger
	i64 u0xe50f35ee1691e470, ; 1224 => com/google/android/gms/location/DeviceOrientation
	i64 u0xe50fb4f0adb1330f, ; 1225 => android/widget/ImageView
	i64 u0xe5198b3185c5450a, ; 1226 => android/text/NoCopySpan
	i64 u0xe57e063876d83762, ; 1227 => android/provider/MediaStore$Video
	i64 u0xe59c130e7d1e4ac3, ; 1228 => java/security/SecureRandom
	i64 u0xe5abbaa9de37d34b, ; 1229 => net/dot/jni/ManagedPeer
	i64 u0xe5d7159aa9632203, ; 1230 => com/google/android/gms/common/api/internal/BaseImplementation
	i64 u0xe663c278c572f570, ; 1231 => android/database/CharArrayBuffer
	i64 u0xe66e73e6f14e03d2, ; 1232 => android/widget/AdapterView$OnItemLongClickListener
	i64 u0xe6b76c398e304c92, ; 1233 => kotlin/coroutines/Continuation
	i64 u0xe6cd200754f8f60a, ; 1234 => android/view/Window$Callback
	i64 u0xe6d0135d38ccb41c, ; 1235 => androidx/appcompat/widget/LinearLayoutCompat$LayoutParams
	i64 u0xe6f01d591e720af4, ; 1236 => com/google/android/gms/maps/GoogleMap$OnPolygonClickListener
	i64 u0xe72468967b13cd11, ; 1237 => androidx/appcompat/view/ActionMode
	i64 u0xe7452a6f5c925f12, ; 1238 => androidx/viewpager/widget/ViewPager$OnPageChangeListener
	i64 u0xe79198d17cd61fdd, ; 1239 => android/content/pm/PackageInfo
	i64 u0xe79ac91277736a72, ; 1240 => androidx/cursoradapter/widget/CursorAdapter
	i64 u0xe7c5168fd08808ad, ; 1241 => android/content/res/AssetFileDescriptor
	i64 u0xe7cd116bc6268309, ; 1242 => mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor
	i64 u0xe7f8d72d37eced45, ; 1243 => android/view/View$OnDragListener
	i64 u0xe81ccd56d897dfbf, ; 1244 => android/content/DialogInterface$OnMultiChoiceClickListener
	i64 u0xe86c900b9d4ca193, ; 1245 => com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback
	i64 u0xe89da97b609fddcb, ; 1246 => kotlinx/coroutines/CoroutineScope
	i64 u0xe8ad0158c9625a37, ; 1247 => kotlinx/coroutines/flow/MutableSharedFlow
	i64 u0xe8b52a7318e34a5d, ; 1248 => androidx/core/view/WindowCompat
	i64 u0xe8c975a4b0a27974, ; 1249 => androidx/lifecycle/MutableLiveData
	i64 u0xe8cbe514aeeebda7, ; 1250 => com/google/android/material/navigation/NavigationBarItemView
	i64 u0xe8d0c30ab85673ff, ; 1251 => android/view/View$OnTouchListener
	i64 u0xe92c74f5d9da19d3, ; 1252 => androidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly
	i64 u0xe9386aaf92488cd7, ; 1253 => android/widget/EdgeEffect
	i64 u0xe94dd9d7a0bada9f, ; 1254 => android/content/res/AssetManager
	i64 u0xe94e56d31bbb02b6, ; 1255 => com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener
	i64 u0xe9a6a557012633af, ; 1256 => crc64338477404e88479c/DragAndDropGestureHandler
	i64 u0xe9f1e6df0de3646b, ; 1257 => androidx/cardview/widget/CardView
	i64 u0xea5301f00a485a30, ; 1258 => com/google/android/gms/maps/GoogleMap$OnMarkerDragListener
	i64 u0xea728e0f517c558e, ; 1259 => kotlin/reflect/KClass
	i64 u0xea77581d05ee4142, ; 1260 => android/view/ViewTreeObserver$OnGlobalLayoutListener
	i64 u0xeaeb4c8036a90f29, ; 1261 => crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener
	i64 u0xeb5fd4251ffaca4b, ; 1262 => com/google/android/gms/location/LocationServices
	i64 u0xeb82145dcac4c559, ; 1263 => java/lang/Long
	i64 u0xeb918642e3f3d0ee, ; 1264 => com/google/android/material/appbar/MaterialToolbar
	i64 u0xebe39d8298b84309, ; 1265 => androidx/lifecycle/Lifecycle$State
	i64 u0xec423b5666e4a47b, ; 1266 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor
	i64 u0xec73e5ffc7ca7338, ; 1267 => plugin/LocalNotification/NotificationActionReceiver
	i64 u0xec8b276c12c354ff, ; 1268 => android/widget/HorizontalScrollView
	i64 u0xec949171e33dfda8, ; 1269 => kotlinx/serialization/encoding/Decoder
	i64 u0xeca1a1cbdf01eb65, ; 1270 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback
	i64 u0xecf38943338adb32, ; 1271 => java/security/cert/X509Certificate
	i64 u0xecf577a3b59693fa, ; 1272 => androidx/fragment/app/FragmentActivity
	i64 u0xed3bf28f37177c87, ; 1273 => android/content/SharedPreferences$OnSharedPreferenceChangeListener
	i64 u0xed49ed70aa9be1b3, ; 1274 => java/nio/channels/spi/AbstractInterruptibleChannel
	i64 u0xedb9cf8779b4cadb, ; 1275 => com/google/android/gms/common/api/internal/UnregisterListenerMethod
	i64 u0xedcbe42c2986666e, ; 1276 => com/google/android/gms/maps/GoogleMap$OnMarkerClickListener
	i64 u0xee58348f4c4ad939, ; 1277 => javax/net/ssl/HostnameVerifier
	i64 u0xee6f3d1e7507d907, ; 1278 => java/util/Enumeration
	i64 u0xeeb466b1609c8ddb, ; 1279 => androidx/viewpager/widget/ViewPager$OnAdapterChangeListener
	i64 u0xeec4bbde96108858, ; 1280 => com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator
	i64 u0xeed6692b305e945a, ; 1281 => crc64e1fb321c08285b90/SwitchCellView
	i64 u0xeef328d1f5b0ffd5, ; 1282 => crc645d80431ce5f73f11/SelectableViewHolder
	i64 u0xef2f2996a1d369cc, ; 1283 => java/io/FileInputStream
	i64 u0xef7212ef395f64aa, ; 1284 => mono/android/view/View_OnFocusChangeListenerImplementor
	i64 u0xef7b5b1ae365a0df, ; 1285 => androidx/navigation/fragment/NavHostFragment
	i64 u0xef953c41325a3428, ; 1286 => java/io/PrintWriter
	i64 u0xefd8c7aa4b48418e, ; 1287 => android/widget/LinearLayout
	i64 u0xefe20f47f9dcda2e, ; 1288 => com/microsoft/maui/ImageLoaderCallback
	i64 u0xf00499aebbbf1859, ; 1289 => androidx/core/app/ActivityCompat
	i64 u0xf025927f8e99b866, ; 1290 => androidx/recyclerview/widget/RecyclerView$OnFlingListener
	i64 u0xf0654f9be531078e, ; 1291 => java/io/Closeable
	i64 u0xf06b3faff90d301b, ; 1292 => androidx/appcompat/widget/Toolbar$LayoutParams
	i64 u0xf0a110150d276c7e, ; 1293 => com/google/android/gms/maps/model/TileOverlayOptions
	i64 u0xf0b145cb4b481b64, ; 1294 => mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor
	i64 u0xf0cf138d551e7388, ; 1295 => crc645d80431ce5f73f11/SizedItemContentView
	i64 u0xf11e04bec9cfb3f6, ; 1296 => com/google/android/gms/common/api/Api$AbstractClientBuilder
	i64 u0xf11f22a6441fcfbc, ; 1297 => java/lang/IndexOutOfBoundsException
	i64 u0xf1244788d28ae1f7, ; 1298 => androidx/lifecycle/AtomicReference
	i64 u0xf16e73c8be28bf16, ; 1299 => java/lang/annotation/Annotation
	i64 u0xf1eae814fc93ec98, ; 1300 => android/graphics/Shader$TileMode
	i64 u0xf21aa8d1473bceba, ; 1301 => androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior
	i64 u0xf236b279159cd6de, ; 1302 => crc645d80431ce5f73f11/StructuredItemsViewAdapter_2
	i64 u0xf2952bad3c8f0233, ; 1303 => android/text/Editable
	i64 u0xf295fd61c06a6738, ; 1304 => android/view/View$OnHoverListener
	i64 u0xf2a0b652533c6f79, ; 1305 => crc645d80431ce5f73f11/EndSnapHelper
	i64 u0xf2ad8fd10ef13c07, ; 1306 => androidx/core/view/ViewGroupCompat
	i64 u0xf2cdc8dcdb853243, ; 1307 => androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory
	i64 u0xf2e19065f0e73e4d, ; 1308 => java/text/DecimalFormatSymbols
	i64 u0xf2e3de579e508658, ; 1309 => android/provider/MediaStore
	i64 u0xf3098ab77d6f1fe4, ; 1310 => mono/com/google/android/gms/maps/GoogleMap_OnCircleClickListenerImplementor
	i64 u0xf323c9ddabd70266, ; 1311 => kotlin/jvm/functions/Function1
	i64 u0xf336fb6a1f86aa13, ; 1312 => androidx/core/app/ActivityCompat$PermissionCompatDelegate
	i64 u0xf38608385d689955, ; 1313 => mono/android/runtime/JavaArray
	i64 u0xf3bc70b7292c6f53, ; 1314 => com/google/android/gms/common/api/internal/LifecycleFragment
	i64 u0xf3d4ab08aaf25ccb, ; 1315 => java/net/UnknownServiceException
	i64 u0xf3d9da552fe9a5a7, ; 1316 => mono/android/text/TextWatcherImplementor
	i64 u0xf3deb63e2d596087, ; 1317 => androidx/appcompat/widget/AppCompatEditText
	i64 u0xf44314212064bd78, ; 1318 => android/view/ViewConfiguration
	i64 u0xf45efcebb489a94e, ; 1319 => com/google/android/gms/location/GeofencingRequest
	i64 u0xf4f69186b2718c37, ; 1320 => android/location/Location
	i64 u0xf5085ea57b8d83a4, ; 1321 => android/view/accessibility/AccessibilityEvent
	i64 u0xf52c07920492a796, ; 1322 => androidx/fragment/app/strictmode/FragmentStrictMode
	i64 u0xf53d4c1a6dbf311b, ; 1323 => android/text/Html
	i64 u0xf53ee7be68a59d41, ; 1324 => com/google/android/material/appbar/CollapsingToolbarLayout
	i64 u0xf55223b6e3eecb56, ; 1325 => androidx/core/view/MenuItemCompat
	i64 u0xf55d9ff0318ff888, ; 1326 => androidx/core/view/WindowInsetsAnimationCompat$Callback
	i64 u0xf57171fdf29f5557, ; 1327 => androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher
	i64 u0xf57a883b87fe9056, ; 1328 => crc6488302ad6e9e4df1a/MauiAppCompatActivity
	i64 u0xf589cc0bcdc773a9, ; 1329 => mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor
	i64 u0xf5bc8b9a77351ffc, ; 1330 => android/graphics/drawable/ShapeDrawable
	i64 u0xf5ff721ef97f8331, ; 1331 => mono/com/google/android/gms/maps/GoogleMap_OnMapCapabilitiesChangedListenerImplementor
	i64 u0xf61f943f0206ffef, ; 1332 => androidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback
	i64 u0xf62a876be707d0b8, ; 1333 => crc645d80431ce5f73f11/RecyclerViewScrollListener_2
	i64 u0xf68f57f80c555315, ; 1334 => crc6452ffdc5b34af3a0f/MauiShapeableImageView
	i64 u0xf6a84ab2352c2e84, ; 1335 => java/util/function/ToLongFunction
	i64 u0xf7595172a9a58b85, ; 1336 => mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor
	i64 u0xf75d8dd75143511a, ; 1337 => androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments
	i64 u0xf7d52362453d5b67, ; 1338 => com/google/android/gms/common/api/Api$AnyClientKey
	i64 u0xf7df86f1c9d8e4a3, ; 1339 => com/google/android/material/tabs/TabLayout$OnTabSelectedListener
	i64 u0xf8058f3d708eaf64, ; 1340 => android/text/style/SuperscriptSpan
	i64 u0xf85cbededb432844, ; 1341 => java/security/spec/EncodedKeySpec
	i64 u0xf86d1ada6f6d214a, ; 1342 => mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor
	i64 u0xf8ca4a570d78d8fe, ; 1343 => crc645d80431ce5f73f11/DataChangeObserver
	i64 u0xf8ce0ad191cefbc4, ; 1344 => androidx/core/view/ActionProvider
	i64 u0xf8d9be8583b92747, ; 1345 => com/google/android/gms/common/ConnectionResult
	i64 u0xf9665f0bb989fc04, ; 1346 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat
	i64 u0xf9e936b25401d5d4, ; 1347 => androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate
	i64 u0xfa1baa381b3f9cde, ; 1348 => mono/java/lang/Runnable
	i64 u0xfa1d5ed2f58367c8, ; 1349 => androidx/core/view/ViewPropertyAnimatorUpdateListener
	i64 u0xfaa2c879d63dad6e, ; 1350 => android/widget/Switch
	i64 u0xfac92c73e59de3a9, ; 1351 => crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks
	i64 u0xfaee1f89c751c767, ; 1352 => android/view/autofill/AutofillId
	i64 u0xfb0541dba11b69d9, ; 1353 => android/graphics/Color
	i64 u0xfb7acb9a6ab88dfc, ; 1354 => android/view/GestureDetector$OnDoubleTapListener
	i64 u0xfb95200d9bf41dfa, ; 1355 => androidx/core/app/NotificationBuilderWithBuilderAccessor
	i64 u0xfb9909be06ff7396, ; 1356 => androidx/core/view/OnReceiveContentListener
	i64 u0xfb9a51a22eb2843f, ; 1357 => javax/security/cert/Certificate
	i64 u0xfbde04d5b5157c93, ; 1358 => androidx/lifecycle/Lifecycle$Event
	i64 u0xfbe9bfa5cc50fed6, ; 1359 => java/util/HashSet
	i64 u0xfc16c38c998d430c, ; 1360 => kotlin/enums/EnumEntries
	i64 u0xfc406a5c9ae396f0, ; 1361 => crc64338477404e88479c/InnerGestureListener
	i64 u0xfc40c16a360aac93, ; 1362 => com/microsoft/maui/PlatformInterop
	i64 u0xfc64f6dc9166eaf2, ; 1363 => crc6452ffdc5b34af3a0f/MauiWebViewClient
	i64 u0xfcb3254d3921ac28, ; 1364 => androidx/appcompat/widget/DecorToolbar
	i64 u0xfcb507ff775c1269, ; 1365 => com/google/android/material/badge/BadgeDrawable
	i64 u0xfd2b1a3de667eb51, ; 1366 => java/lang/Runnable
	i64 u0xfd45cc49d3236300, ; 1367 => android/os/IBinder$DeathRecipient
	i64 u0xfd4ff765c5f32a77, ; 1368 => crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable
	i64 u0xfd582859e64f83db, ; 1369 => crc64e1fb321c08285b90/GroupedListViewAdapter
	i64 u0xfd6f34ffcf88aced, ; 1370 => androidx/core/widget/NestedScrollView
	i64 u0xfd830ff8e6ccffed, ; 1371 => android/widget/AdapterView$OnItemClickListener
	i64 u0xfd853b4373fcc7f1, ; 1372 => android/view/WindowMetrics
	i64 u0xfdcaff9cf0f28f33, ; 1373 => crc640ec207abc449b2ca/ShellPageContainer
	i64 u0xfdcbbb144e73bbdc, ; 1374 => com/google/android/gms/location/LocationSettingsResult
	i64 u0xfdf56d1e55549adf, ; 1375 => mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor
	i64 u0xfe07df0b35277433, ; 1376 => android/widget/LinearLayout$LayoutParams
	i64 u0xfe6b0b2cfdd593b8, ; 1377 => android/text/style/ForegroundColorSpan
	i64 u0xfe82461141d5a47e, ; 1378 => crc6452ffdc5b34af3a0f/MauiSearchView
	i64 u0xfebcdabf0ccfc548, ; 1379 => android/content/pm/ShortcutInfo$Builder
	i64 u0xfebf2b77f1940e7e, ; 1380 => java/security/PrivateKey
	i64 u0xfedc22e568a65326, ; 1381 => android/widget/TextView$OnEditorActionListener
	i64 u0xff079db13d3076a9, ; 1382 => androidx/core/content/ContextCompat
	i64 u0xffa1d29a1a1a8064, ; 1383 => com/google/android/gms/common/api/PendingResult
	i64 u0xffd092c889d0e828, ; 1384 => com/google/android/material/bottomsheet/BottomSheetDialog
	i64 u0xfff33782bdf2bde2 ; 1385 => android/widget/CompoundButton$OnCheckedChangeListener
], align 16

@module0_managed_to_java = internal dso_local constant [46 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 532; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 4; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 1230; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 817; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 1118; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 721; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000025, ; uint32_t type_token_id
		i32 182; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 254; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 395; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 727; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 1201; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200002e, ; uint32_t type_token_id
		i32 241; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 103; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000031, ; uint32_t type_token_id
		i32 126; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000033, ; uint32_t type_token_id
		i32 885; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000034, ; uint32_t type_token_id
		i32 702; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000035, ; uint32_t type_token_id
		i32 859; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000036, ; uint32_t type_token_id
		i32 985; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000038, ; uint32_t type_token_id
		i32 1275; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 952; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 474; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 1046; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 951; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x0200003f, ; uint32_t type_token_id
		i32 149; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000040, ; uint32_t type_token_id
		i32 1077; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000041, ; uint32_t type_token_id
		i32 396; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000043, ; uint32_t type_token_id
		i32 348; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 829; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 954; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 666; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 601; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 1188; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 1296; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 802; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 1338; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 558; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000053, ; uint32_t type_token_id
		i32 683; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 798; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x02000056, ; uint32_t type_token_id
		i32 657; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000057, ; uint32_t type_token_id
		i32 1152; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 1087; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 1383; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 388; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x02000060, ; uint32_t type_token_id
		i32 142; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 245; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x02000068, ; uint32_t type_token_id
		i32 821; uint32_t java_map_index
	} ; 45
], align 16

@module0_managed_to_java_duplicates = internal dso_local constant [26 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 817; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 1118; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000026, ; uint32_t type_token_id
		i32 182; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 254; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 395; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 727; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000030, ; uint32_t type_token_id
		i32 103; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000032, ; uint32_t type_token_id
		i32 126; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 859; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000039, ; uint32_t type_token_id
		i32 1275; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 951; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000042, ; uint32_t type_token_id
		i32 396; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 829; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 666; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 601; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 1296; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 802; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000052, ; uint32_t type_token_id
		i32 558; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 683; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000058, ; uint32_t type_token_id
		i32 657; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000059, ; uint32_t type_token_id
		i32 954; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 1087; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 388; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000065, ; uint32_t type_token_id
		i32 1383; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000067, ; uint32_t type_token_id
		i32 245; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000069, ; uint32_t type_token_id
		i32 821; uint32_t java_map_index
	} ; 25
], align 16

@module1_managed_to_java = internal dso_local constant [68 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000041, ; uint32_t type_token_id
		i32 500; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000042, ; uint32_t type_token_id
		i32 988; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000043, ; uint32_t type_token_id
		i32 157; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 897; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 940; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 1036; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 945; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 1280; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 259; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 253; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 813; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 539; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 173; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 432; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 975; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 392; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 463; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000058, ; uint32_t type_token_id
		i32 1219; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 696; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 936; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000062, ; uint32_t type_token_id
		i32 413; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 1084; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000067, ; uint32_t type_token_id
		i32 1245; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000069, ; uint32_t type_token_id
		i32 1384; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 1365; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 427; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 1255; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 1329; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000071, ; uint32_t type_token_id
		i32 394; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000073, ; uint32_t type_token_id
		i32 7; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000079, ; uint32_t type_token_id
		i32 1250; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 1173; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 921; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 749; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000080, ; uint32_t type_token_id
		i32 1; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000083, ; uint32_t type_token_id
		i32 1006; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000087, ; uint32_t type_token_id
		i32 234; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000088, ; uint32_t type_token_id
		i32 76; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x02000089, ; uint32_t type_token_id
		i32 503; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 1242; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 1339; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x02000091, ; uint32_t type_token_id
		i32 508; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x02000099, ; uint32_t type_token_id
		i32 192; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 8; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x0200009c, ; uint32_t type_token_id
		i32 803; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 350; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 1051; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 659; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x020000a1, ; uint32_t type_token_id
		i32 2; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 1178; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x020000a4, ; uint32_t type_token_id
		i32 69; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x020000a6, ; uint32_t type_token_id
		i32 1324; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x020000a7, ; uint32_t type_token_id
		i32 1047; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x020000a9, ; uint32_t type_token_id
		i32 555; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x020000aa, ; uint32_t type_token_id
		i32 736; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x020000ab, ; uint32_t type_token_id
		i32 45; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 842; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x020000ae, ; uint32_t type_token_id
		i32 152; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x020000b0, ; uint32_t type_token_id
		i32 1064; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x020000b1, ; uint32_t type_token_id
		i32 1198; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x020000b4, ; uint32_t type_token_id
		i32 1342; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x020000b5, ; uint32_t type_token_id
		i32 1004; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 1294; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020000b9, ; uint32_t type_token_id
		i32 19; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 66; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 551; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 1264; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020000c4, ; uint32_t type_token_id
		i32 77; uint32_t java_map_index
	} ; 67
], align 16

@module1_managed_to_java_duplicates = internal dso_local constant [25 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 157; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 1280; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000052, ; uint32_t type_token_id
		i32 975; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000056, ; uint32_t type_token_id
		i32 463; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000060, ; uint32_t type_token_id
		i32 936; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000068, ; uint32_t type_token_id
		i32 1245; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 1255; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000072, ; uint32_t type_token_id
		i32 394; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 1250; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 1173; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 427; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000081, ; uint32_t type_token_id
		i32 1; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 503; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000090, ; uint32_t type_token_id
		i32 1339; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 8; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 803; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x020000a3, ; uint32_t type_token_id
		i32 1178; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x020000a5, ; uint32_t type_token_id
		i32 69; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x020000a8, ; uint32_t type_token_id
		i32 1047; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x020000ac, ; uint32_t type_token_id
		i32 45; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x020000af, ; uint32_t type_token_id
		i32 152; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x020000b2, ; uint32_t type_token_id
		i32 1198; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x020000b6, ; uint32_t type_token_id
		i32 1004; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 66; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 551; uint32_t java_map_index
	} ; 24
], align 16

@module2_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 611; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 41; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 1285; uint32_t java_map_index
	} ; 2
], align 16

@module3_managed_to_java = internal dso_local constant [17 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 581; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 1041; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 309; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 938; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 208; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 832; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 434; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 1009; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 572; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 909; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 873; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 838; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 1145; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 962; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 1137; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000021, ; uint32_t type_token_id
		i32 229; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 949; uint32_t java_map_index
	} ; 16
], align 16

@module3_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 581; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 838; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 873; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 962; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000022, ; uint32_t type_token_id
		i32 229; uint32_t java_map_index
	} ; 4
], align 16

@module4_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 890; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 1270; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 896; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 711; uint32_t java_map_index
	} ; 3
], align 16

@module4_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 1270; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 896; uint32_t java_map_index
	} ; 1
], align 16

@module5_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000003, ; uint32_t type_token_id
		i32 1106; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 986; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 809; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 1130; uint32_t java_map_index
	} ; 3
], align 16

@module5_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 809; uint32_t java_map_index
	} ; 0
], align 4

@module6_managed_to_java = internal dso_local constant [18 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 595; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 1345; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 1151; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 221; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 514; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 627; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 796; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000021, ; uint32_t type_token_id
		i32 502; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 408; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000025, ; uint32_t type_token_id
		i32 34; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 12; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 255; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 205; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 175; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 1314; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200002e, ; uint32_t type_token_id
		i32 915; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000030, ; uint32_t type_token_id
		i32 944; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000031, ; uint32_t type_token_id
		i32 507; uint32_t java_map_index
	} ; 17
], align 16

@module6_managed_to_java_duplicates = internal dso_local constant [10 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 595; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 514; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 627; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 796; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000022, ; uint32_t type_token_id
		i32 502; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 408; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000026, ; uint32_t type_token_id
		i32 34; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 255; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 1314; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 915; uint32_t java_map_index
	} ; 9
], align 16

@module7_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000079, ; uint32_t type_token_id
		i32 1067; uint32_t java_map_index
	} ; 0
], align 4

@module8_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 1240; uint32_t java_map_index
	} ; 0
], align 4

@module8_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 1240; uint32_t java_map_index
	} ; 0
], align 4

@module9_managed_to_java = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 753; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 1215; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 140; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 917; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 886; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 862; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 623; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 225; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 58; uint32_t java_map_index
	} ; 8
], align 16

@module9_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 753; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 1215; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 886; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 225; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 623; uint32_t java_map_index
	} ; 4
], align 16

@module10_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 1257; uint32_t java_map_index
	} ; 0
], align 4

@module11_managed_to_java = internal dso_local constant [80 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x020000bc, ; uint32_t type_token_id
		i32 441; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x020000bd, ; uint32_t type_token_id
		i32 781; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x020000be, ; uint32_t type_token_id
		i32 991; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x020000e1, ; uint32_t type_token_id
		i32 1328; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x020000e2, ; uint32_t type_token_id
		i32 284; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x020000ef, ; uint32_t type_token_id
		i32 785; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x020000f0, ; uint32_t type_token_id
		i32 1351; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000180, ; uint32_t type_token_id
		i32 1110; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000182, ; uint32_t type_token_id
		i32 1288; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000184, ; uint32_t type_token_id
		i32 675; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000186, ; uint32_t type_token_id
		i32 1174; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000187, ; uint32_t type_token_id
		i32 490; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000188, ; uint32_t type_token_id
		i32 363; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200018a, ; uint32_t type_token_id
		i32 1065; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200018b, ; uint32_t type_token_id
		i32 433; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200018c, ; uint32_t type_token_id
		i32 1362; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200018d, ; uint32_t type_token_id
		i32 1165; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200018e, ; uint32_t type_token_id
		i32 1223; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200018f, ; uint32_t type_token_id
		i32 853; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000190, ; uint32_t type_token_id
		i32 792; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000191, ; uint32_t type_token_id
		i32 1000; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000193, ; uint32_t type_token_id
		i32 993; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000198, ; uint32_t type_token_id
		i32 197; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x020001a5, ; uint32_t type_token_id
		i32 637; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x020001ab, ; uint32_t type_token_id
		i32 608; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x020001ac, ; uint32_t type_token_id
		i32 918; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x020001b7, ; uint32_t type_token_id
		i32 760; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x020001c4, ; uint32_t type_token_id
		i32 158; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x020001c6, ; uint32_t type_token_id
		i32 833; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x020001c7, ; uint32_t type_token_id
		i32 195; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x020001c8, ; uint32_t type_token_id
		i32 860; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x020001c9, ; uint32_t type_token_id
		i32 730; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x020001cb, ; uint32_t type_token_id
		i32 826; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x020001cc, ; uint32_t type_token_id
		i32 210; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x020001cd, ; uint32_t type_token_id
		i32 534; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x020001ce, ; uint32_t type_token_id
		i32 366; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x020001cf, ; uint32_t type_token_id
		i32 735; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x020001d0, ; uint32_t type_token_id
		i32 93; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x020001d1, ; uint32_t type_token_id
		i32 695; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x020001d2, ; uint32_t type_token_id
		i32 976; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x020001d3, ; uint32_t type_token_id
		i32 705; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x020001d4, ; uint32_t type_token_id
		i32 1059; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x020001d5, ; uint32_t type_token_id
		i32 299; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x020001d7, ; uint32_t type_token_id
		i32 52; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x020001d9, ; uint32_t type_token_id
		i32 1127; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x020001db, ; uint32_t type_token_id
		i32 1378; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x020001dc, ; uint32_t type_token_id
		i32 1334; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x020001dd, ; uint32_t type_token_id
		i32 743; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x020001de, ; uint32_t type_token_id
		i32 676; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x020001df, ; uint32_t type_token_id
		i32 438; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x020001e0, ; uint32_t type_token_id
		i32 89; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x020001e4, ; uint32_t type_token_id
		i32 593; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x020001e6, ; uint32_t type_token_id
		i32 726; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x020001e7, ; uint32_t type_token_id
		i32 1108; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x020001e9, ; uint32_t type_token_id
		i32 550; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x020001ea, ; uint32_t type_token_id
		i32 1363; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x020001ec, ; uint32_t type_token_id
		i32 27; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x020001f0, ; uint32_t type_token_id
		i32 614; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x020001f2, ; uint32_t type_token_id
		i32 494; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x020001f4, ; uint32_t type_token_id
		i32 571; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x020001f5, ; uint32_t type_token_id
		i32 516; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x020001f7, ; uint32_t type_token_id
		i32 55; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020001fa, ; uint32_t type_token_id
		i32 934; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020001fd, ; uint32_t type_token_id
		i32 957; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x0200020d, ; uint32_t type_token_id
		i32 547; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x0200020f, ; uint32_t type_token_id
		i32 194; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x02000211, ; uint32_t type_token_id
		i32 279; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x02000228, ; uint32_t type_token_id
		i32 1208; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x02000229, ; uint32_t type_token_id
		i32 566; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x020002d1, ; uint32_t type_token_id
		i32 29; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x020002d2, ; uint32_t type_token_id
		i32 85; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x020002eb, ; uint32_t type_token_id
		i32 99; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x02000335, ; uint32_t type_token_id
		i32 1072; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x0200033a, ; uint32_t type_token_id
		i32 774; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x02000346, ; uint32_t type_token_id
		i32 767; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x0200034d, ; uint32_t type_token_id
		i32 700; uint32_t java_map_index
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 u0x02000358, ; uint32_t type_token_id
		i32 461; uint32_t java_map_index
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 u0x02000359, ; uint32_t type_token_id
		i32 537; uint32_t java_map_index
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 u0x0200035f, ; uint32_t type_token_id
		i32 94; uint32_t java_map_index
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 u0x020003a4, ; uint32_t type_token_id
		i32 905; uint32_t java_map_index
	} ; 79
], align 16

@module11_managed_to_java_duplicates = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000181, ; uint32_t type_token_id
		i32 1110; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000183, ; uint32_t type_token_id
		i32 1288; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000185, ; uint32_t type_token_id
		i32 675; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000189, ; uint32_t type_token_id
		i32 363; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000192, ; uint32_t type_token_id
		i32 1000; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000194, ; uint32_t type_token_id
		i32 993; uint32_t java_map_index
	} ; 5
], align 16

@module12_managed_to_java = internal dso_local constant [22 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 282; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 459; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 648; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 877; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1092; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 641; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 267; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 308; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 202; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 313; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 509; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 1076; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 17; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 32; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000021, ; uint32_t type_token_id
		i32 485; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000022, ; uint32_t type_token_id
		i32 784; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 59; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000025, ; uint32_t type_token_id
		i32 1252; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000026, ; uint32_t type_token_id
		i32 1140; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 240; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 358; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 1032; uint32_t java_map_index
	} ; 21
], align 16

@module12_managed_to_java_duplicates = internal dso_local constant [8 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 1092; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 267; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 308; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 202; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 1076; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 59; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 240; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 358; uint32_t java_map_index
	} ; 7
], align 16

@module13_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 345; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 689; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 452; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 1176; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 978; uint32_t java_map_index
	} ; 4
], align 16

@module13_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 689; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 452; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 978; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 1176; uint32_t java_map_index
	} ; 3
], align 16

@module14_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 154; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 28; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 1249; uint32_t java_map_index
	} ; 2
], align 16

@module14_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 154; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 28; uint32_t java_map_index
	} ; 1
], align 16

@module15_managed_to_java = internal dso_local constant [27 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 1262; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 1057; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 869; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 1061; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 1120; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 816; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 1224; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 30; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 1319; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 824; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 531; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 694; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000022, ; uint32_t type_token_id
		i32 747; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 606; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000025, ; uint32_t type_token_id
		i32 1034; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 843; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 772; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 799; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 895; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000030, ; uint32_t type_token_id
		i32 823; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000031, ; uint32_t type_token_id
		i32 937; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000033, ; uint32_t type_token_id
		i32 758; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000034, ; uint32_t type_token_id
		i32 1209; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000035, ; uint32_t type_token_id
		i32 653; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000036, ; uint32_t type_token_id
		i32 1154; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 1374; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000038, ; uint32_t type_token_id
		i32 794; uint32_t java_map_index
	} ; 26
], align 16

@module15_managed_to_java_duplicates = internal dso_local constant [11 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 531; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 694; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000021, ; uint32_t type_token_id
		i32 869; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 747; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000026, ; uint32_t type_token_id
		i32 1034; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 843; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 1061; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 772; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 799; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200002e, ; uint32_t type_token_id
		i32 1120; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000032, ; uint32_t type_token_id
		i32 937; uint32_t java_map_index
	} ; 10
], align 16

@module16_managed_to_java = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 966; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 151; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 376; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 16; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 1024; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 552; uint32_t java_map_index
	} ; 5
], align 16

@module16_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 151; uint32_t java_map_index
	} ; 0
], align 4

@module17_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 498; uint32_t java_map_index
	} ; 0
], align 4

@module17_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 498; uint32_t java_map_index
	} ; 0
], align 4

@module18_managed_to_java = internal dso_local constant [14 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000003, ; uint32_t type_token_id
		i32 1190; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 780; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 1027; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 495; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 992; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000031, ; uint32_t type_token_id
		i32 430; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000035, ; uint32_t type_token_id
		i32 931; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000039, ; uint32_t type_token_id
		i32 661; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 935; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000041, ; uint32_t type_token_id
		i32 298; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 1129; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 147; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 409; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000091, ; uint32_t type_token_id
		i32 1229; uint32_t java_map_index
	} ; 13
], align 16

@module18_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 1190; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 1190; uint32_t java_map_index
	} ; 1
], align 16

@module19_managed_to_java = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 633; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000040, ; uint32_t type_token_id
		i32 961; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000042, ; uint32_t type_token_id
		i32 352; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000072, ; uint32_t type_token_id
		i32 138; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000079, ; uint32_t type_token_id
		i32 742; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 1020; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000088, ; uint32_t type_token_id
		i32 1261; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000096, ; uint32_t type_token_id
		i32 907; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000097, ; uint32_t type_token_id
		i32 787; uint32_t java_map_index
	} ; 8
], align 16

@module20_managed_to_java = internal dso_local constant [108 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000337, ; uint32_t type_token_id
		i32 198; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000338, ; uint32_t type_token_id
		i32 757; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000339, ; uint32_t type_token_id
		i32 1256; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200034a, ; uint32_t type_token_id
		i32 1214; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200034b, ; uint32_t type_token_id
		i32 995; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200034c, ; uint32_t type_token_id
		i32 850; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200034d, ; uint32_t type_token_id
		i32 612; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200034e, ; uint32_t type_token_id
		i32 380; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000351, ; uint32_t type_token_id
		i32 1361; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000352, ; uint32_t type_token_id
		i32 1183; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000354, ; uint32_t type_token_id
		i32 793; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000355, ; uint32_t type_token_id
		i32 312; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000358, ; uint32_t type_token_id
		i32 302; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200035b, ; uint32_t type_token_id
		i32 458; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000369, ; uint32_t type_token_id
		i32 47; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200036a, ; uint32_t type_token_id
		i32 292; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000378, ; uint32_t type_token_id
		i32 311; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200037a, ; uint32_t type_token_id
		i32 224; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200037b, ; uint32_t type_token_id
		i32 493; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200037c, ; uint32_t type_token_id
		i32 156; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200037d, ; uint32_t type_token_id
		i32 882; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200037e, ; uint32_t type_token_id
		i32 573; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200037f, ; uint32_t type_token_id
		i32 908; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000380, ; uint32_t type_token_id
		i32 624; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000381, ; uint32_t type_token_id
		i32 731; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000382, ; uint32_t type_token_id
		i32 1164; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000383, ; uint32_t type_token_id
		i32 1071; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000384, ; uint32_t type_token_id
		i32 1373; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000385, ; uint32_t type_token_id
		i32 13; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000386, ; uint32_t type_token_id
		i32 1222; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000387, ; uint32_t type_token_id
		i32 718; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200038a, ; uint32_t type_token_id
		i32 1080; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000394, ; uint32_t type_token_id
		i32 769; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x02000395, ; uint32_t type_token_id
		i32 213; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000396, ; uint32_t type_token_id
		i32 912; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000397, ; uint32_t type_token_id
		i32 184; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000398, ; uint32_t type_token_id
		i32 836; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000399, ; uint32_t type_token_id
		i32 101; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x0200039a, ; uint32_t type_token_id
		i32 1302; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x0200039b, ; uint32_t type_token_id
		i32 1155; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x0200039d, ; uint32_t type_token_id
		i32 900; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x0200039e, ; uint32_t type_token_id
		i32 1343; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x0200039f, ; uint32_t type_token_id
		i32 766; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x020003a3, ; uint32_t type_token_id
		i32 654; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x020003af, ; uint32_t type_token_id
		i32 185; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x020003b0, ; uint32_t type_token_id
		i32 457; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x020003b1, ; uint32_t type_token_id
		i32 1167; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x020003b3, ; uint32_t type_token_id
		i32 1333; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x020003b4, ; uint32_t type_token_id
		i32 391; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x020003b5, ; uint32_t type_token_id
		i32 1282; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x020003b6, ; uint32_t type_token_id
		i32 68; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x020003b7, ; uint32_t type_token_id
		i32 11; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x020003b8, ; uint32_t type_token_id
		i32 1295; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x020003b9, ; uint32_t type_token_id
		i32 579; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x020003ba, ; uint32_t type_token_id
		i32 127; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x020003bb, ; uint32_t type_token_id
		i32 191; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x020003bc, ; uint32_t type_token_id
		i32 1305; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x020003bd, ; uint32_t type_token_id
		i32 1175; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x020003be, ; uint32_t type_token_id
		i32 243; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x020003c0, ; uint32_t type_token_id
		i32 807; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x020003c1, ; uint32_t type_token_id
		i32 681; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x020003c2, ; uint32_t type_token_id
		i32 239; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020003c3, ; uint32_t type_token_id
		i32 1093; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020003c5, ; uint32_t type_token_id
		i32 272; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020003cd, ; uint32_t type_token_id
		i32 994; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020003ce, ; uint32_t type_token_id
		i32 1163; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020003cf, ; uint32_t type_token_id
		i32 733; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020003d0, ; uint32_t type_token_id
		i32 664; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x020003d1, ; uint32_t type_token_id
		i32 196; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x020003d2, ; uint32_t type_token_id
		i32 314; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x020003d5, ; uint32_t type_token_id
		i32 545; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x020003d6, ; uint32_t type_token_id
		i32 228; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x020003d8, ; uint32_t type_token_id
		i32 111; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x020003d9, ; uint32_t type_token_id
		i32 1369; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x020003db, ; uint32_t type_token_id
		i32 51; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x020003dc, ; uint32_t type_token_id
		i32 543; uint32_t java_map_index
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 u0x020003de, ; uint32_t type_token_id
		i32 1281; uint32_t java_map_index
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 u0x020003e2, ; uint32_t type_token_id
		i32 144; uint32_t java_map_index
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 u0x020003e3, ; uint32_t type_token_id
		i32 894; uint32_t java_map_index
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 u0x0200049f, ; uint32_t type_token_id
		i32 230; uint32_t java_map_index
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 u0x0200056f, ; uint32_t type_token_id
		i32 135; uint32_t java_map_index
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 u0x020005f3, ; uint32_t type_token_id
		i32 478; uint32_t java_map_index
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 u0x020005f9, ; uint32_t type_token_id
		i32 1002; uint32_t java_map_index
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 u0x02000606, ; uint32_t type_token_id
		i32 655; uint32_t java_map_index
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 u0x02000611, ; uint32_t type_token_id
		i32 646; uint32_t java_map_index
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 u0x02000613, ; uint32_t type_token_id
		i32 629; uint32_t java_map_index
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 u0x02000614, ; uint32_t type_token_id
		i32 1191; uint32_t java_map_index
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 u0x02000615, ; uint32_t type_token_id
		i32 756; uint32_t java_map_index
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 u0x0200061c, ; uint32_t type_token_id
		i32 1149; uint32_t java_map_index
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 u0x0200061f, ; uint32_t type_token_id
		i32 1123; uint32_t java_map_index
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 u0x02000620, ; uint32_t type_token_id
		i32 866; uint32_t java_map_index
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 u0x02000621, ; uint32_t type_token_id
		i32 1081; uint32_t java_map_index
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 u0x02000624, ; uint32_t type_token_id
		i32 1368; uint32_t java_map_index
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 u0x02000628, ; uint32_t type_token_id
		i32 306; uint32_t java_map_index
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 u0x02000629, ; uint32_t type_token_id
		i32 615; uint32_t java_map_index
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 u0x02000632, ; uint32_t type_token_id
		i32 577; uint32_t java_map_index
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 u0x02000635, ; uint32_t type_token_id
		i32 580; uint32_t java_map_index
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 u0x02000638, ; uint32_t type_token_id
		i32 1204; uint32_t java_map_index
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 u0x0200063e, ; uint32_t type_token_id
		i32 1040; uint32_t java_map_index
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 u0x0200063f, ; uint32_t type_token_id
		i32 86; uint32_t java_map_index
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 u0x02000640, ; uint32_t type_token_id
		i32 145; uint32_t java_map_index
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 u0x02000641, ; uint32_t type_token_id
		i32 591; uint32_t java_map_index
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 u0x02000643, ; uint32_t type_token_id
		i32 327; uint32_t java_map_index
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 u0x02000644, ; uint32_t type_token_id
		i32 1075; uint32_t java_map_index
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 u0x020006ab, ; uint32_t type_token_id
		i32 487; uint32_t java_map_index
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 u0x020006ae, ; uint32_t type_token_id
		i32 328; uint32_t java_map_index
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 u0x020006af, ; uint32_t type_token_id
		i32 188; uint32_t java_map_index
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 u0x020006b7, ; uint32_t type_token_id
		i32 1003; uint32_t java_map_index
	} ; 107
], align 16

@module21_managed_to_java = internal dso_local constant [55 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000036, ; uint32_t type_token_id
		i32 1182; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 941; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000038, ; uint32_t type_token_id
		i32 1327; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 1292; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 262; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 1159; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000042, ; uint32_t type_token_id
		i32 891; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000043, ; uint32_t type_token_id
		i32 1192; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 1063; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 1317; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 1083; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 35; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 456; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 244; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 1364; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 879; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 1235; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 453; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 635; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 876; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 671; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 23; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 513; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000059, ; uint32_t type_token_id
		i32 1113; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 112; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 693; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 1079; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 568; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 482; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 893; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 610; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 439; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 1266; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x02000071, ; uint32_t type_token_id
		i32 929; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000072, ; uint32_t type_token_id
		i32 567; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000073, ; uint32_t type_token_id
		i32 658; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000076, ; uint32_t type_token_id
		i32 1336; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000077, ; uint32_t type_token_id
		i32 104; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x02000079, ; uint32_t type_token_id
		i32 449; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 899; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000081, ; uint32_t type_token_id
		i32 739; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x02000082, ; uint32_t type_token_id
		i32 187; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x02000084, ; uint32_t type_token_id
		i32 963; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x02000085, ; uint32_t type_token_id
		i32 669; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x02000087, ; uint32_t type_token_id
		i32 948; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x02000088, ; uint32_t type_token_id
		i32 1206; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 1237; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x0200008b, ; uint32_t type_token_id
		i32 343; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 1133; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 755; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x02000091, ; uint32_t type_token_id
		i32 371; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x02000093, ; uint32_t type_token_id
		i32 146; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x02000095, ; uint32_t type_token_id
		i32 881; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x02000097, ; uint32_t type_token_id
		i32 355; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x02000098, ; uint32_t type_token_id
		i32 38; uint32_t java_map_index
	} ; 54
], align 16

@module21_managed_to_java_duplicates = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 262; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 1364; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000052, ; uint32_t type_token_id
		i32 671; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000056, ; uint32_t type_token_id
		i32 513; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 112; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000074, ; uint32_t type_token_id
		i32 658; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 104; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 449; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 899; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000080, ; uint32_t type_token_id
		i32 929; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000083, ; uint32_t type_token_id
		i32 187; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000086, ; uint32_t type_token_id
		i32 669; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000089, ; uint32_t type_token_id
		i32 1206; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200008c, ; uint32_t type_token_id
		i32 343; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 1237; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000090, ; uint32_t type_token_id
		i32 755; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000092, ; uint32_t type_token_id
		i32 371; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000094, ; uint32_t type_token_id
		i32 146; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000096, ; uint32_t type_token_id
		i32 881; uint32_t java_map_index
	} ; 18
], align 16

@module22_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 344; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 916; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 1279; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000022, ; uint32_t type_token_id
		i32 488; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 1238; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 113; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 678; uint32_t java_map_index
	} ; 6
], align 16

@module22_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 344; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 1279; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 1238; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 678; uint32_t java_map_index
	} ; 3
], align 16

@module23_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 465; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 1301; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 922; uint32_t java_map_index
	} ; 2
], align 16

@module23_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 1301; uint32_t java_map_index
	} ; 0
], align 4

@module24_managed_to_java = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 814; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 1358; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 1265; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 1298; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 639; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 139; uint32_t java_map_index
	} ; 5
], align 16

@module24_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 639; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 139; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 814; uint32_t java_map_index
	} ; 2
], align 16

@module25_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 719; uint32_t java_map_index
	} ; 0
], align 4

@module26_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 1246; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 218; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 80; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 1247; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 63; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 642; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 585; uint32_t java_map_index
	} ; 6
], align 16

@module26_managed_to_java_duplicates = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 1246; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 218; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 80; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 1247; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 63; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 642; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 585; uint32_t java_map_index
	} ; 6
], align 16

@module27_managed_to_java = internal dso_local constant [10 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 1197; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 137; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 569; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000031, ; uint32_t type_token_id
		i32 763; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000032, ; uint32_t type_token_id
		i32 249; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000034, ; uint32_t type_token_id
		i32 1150; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000036, ; uint32_t type_token_id
		i32 1269; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000038, ; uint32_t type_token_id
		i32 232; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 732; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 685; uint32_t java_map_index
	} ; 9
], align 16

@module27_managed_to_java_duplicates = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 1197; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200002e, ; uint32_t type_token_id
		i32 137; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000030, ; uint32_t type_token_id
		i32 569; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000033, ; uint32_t type_token_id
		i32 249; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000035, ; uint32_t type_token_id
		i32 1150; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 1269; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000039, ; uint32_t type_token_id
		i32 232; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 732; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 685; uint32_t java_map_index
	} ; 8
], align 16

@module28_managed_to_java = internal dso_local constant [104 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 216; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 61; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 22; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 200; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 466; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 203; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 1134; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 359; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 39; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000026, ; uint32_t type_token_id
		i32 506; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 542; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 400; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 70; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 667; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 870; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000030, ; uint32_t type_token_id
		i32 647; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000031, ; uint32_t type_token_id
		i32 384; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000034, ; uint32_t type_token_id
		i32 1310; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000035, ; uint32_t type_token_id
		i32 583; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000038, ; uint32_t type_token_id
		i32 622; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000039, ; uint32_t type_token_id
		i32 1166; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 782; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 904; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000040, ; uint32_t type_token_id
		i32 688; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000041, ; uint32_t type_token_id
		i32 1122; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 246; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 303; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 1025; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 79; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 1331; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 698; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 913; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 999; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x02000053, ; uint32_t type_token_id
		i32 751; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000056, ; uint32_t type_token_id
		i32 871; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000057, ; uint32_t type_token_id
		i32 1276; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 161; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 1258; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x02000060, ; uint32_t type_token_id
		i32 1136; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000061, ; uint32_t type_token_id
		i32 1184; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000064, ; uint32_t type_token_id
		i32 370; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x02000065, ; uint32_t type_token_id
		i32 477; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x02000068, ; uint32_t type_token_id
		i32 353; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x02000069, ; uint32_t type_token_id
		i32 320; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 933; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 1096; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 1099; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x02000071, ; uint32_t type_token_id
		i32 1236; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x02000074, ; uint32_t type_token_id
		i32 445; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x02000075, ; uint32_t type_token_id
		i32 984; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 745; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x02000079, ; uint32_t type_token_id
		i32 723; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x020000ae, ; uint32_t type_token_id
		i32 326; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x020000af, ; uint32_t type_token_id
		i32 1102; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x020000b1, ; uint32_t type_token_id
		i32 362; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 1170; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x020000b5, ; uint32_t type_token_id
		i32 674; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x020000b7, ; uint32_t type_token_id
		i32 307; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 1013; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x020000b9, ; uint32_t type_token_id
		i32 679; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x020000ba, ; uint32_t type_token_id
		i32 810; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x020000bb, ; uint32_t type_token_id
		i32 336; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020000bc, ; uint32_t type_token_id
		i32 341; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020000bd, ; uint32_t type_token_id
		i32 437; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020000be, ; uint32_t type_token_id
		i32 123; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 797; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 357; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 1090; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 1029; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 57; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x020000c4, ; uint32_t type_token_id
		i32 297; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x020000c6, ; uint32_t type_token_id
		i32 771; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x020000c7, ; uint32_t type_token_id
		i32 171; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x020000c8, ; uint32_t type_token_id
		i32 467; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x020000cb, ; uint32_t type_token_id
		i32 26; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x020000cc, ; uint32_t type_token_id
		i32 421; uint32_t java_map_index
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 u0x020000d1, ; uint32_t type_token_id
		i32 442; uint32_t java_map_index
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 u0x020000d2, ; uint32_t type_token_id
		i32 1141; uint32_t java_map_index
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 u0x020000d3, ; uint32_t type_token_id
		i32 1030; uint32_t java_map_index
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 u0x020000d4, ; uint32_t type_token_id
		i32 141; uint32_t java_map_index
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 u0x020000d5, ; uint32_t type_token_id
		i32 1052; uint32_t java_map_index
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 u0x020000d6, ; uint32_t type_token_id
		i32 546; uint32_t java_map_index
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 u0x020000d7, ; uint32_t type_token_id
		i32 1010; uint32_t java_map_index
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 u0x020000d8, ; uint32_t type_token_id
		i32 533; uint32_t java_map_index
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 u0x020000d9, ; uint32_t type_token_id
		i32 644; uint32_t java_map_index
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 u0x020000db, ; uint32_t type_token_id
		i32 288; uint32_t java_map_index
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 u0x020000dc, ; uint32_t type_token_id
		i32 338; uint32_t java_map_index
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 u0x020000dd, ; uint32_t type_token_id
		i32 1008; uint32_t java_map_index
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 u0x020000de, ; uint32_t type_token_id
		i32 835; uint32_t java_map_index
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 u0x020000df, ; uint32_t type_token_id
		i32 1107; uint32_t java_map_index
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 u0x020000e0, ; uint32_t type_token_id
		i32 600; uint32_t java_map_index
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 u0x020000e1, ; uint32_t type_token_id
		i32 1005; uint32_t java_map_index
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 u0x020000e2, ; uint32_t type_token_id
		i32 91; uint32_t java_map_index
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 u0x020000e3, ; uint32_t type_token_id
		i32 172; uint32_t java_map_index
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 u0x020000e4, ; uint32_t type_token_id
		i32 270; uint32_t java_map_index
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 u0x020000e5, ; uint32_t type_token_id
		i32 651; uint32_t java_map_index
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 u0x020000e6, ; uint32_t type_token_id
		i32 155; uint32_t java_map_index
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 u0x020000e7, ; uint32_t type_token_id
		i32 36; uint32_t java_map_index
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 u0x020000e8, ; uint32_t type_token_id
		i32 720; uint32_t java_map_index
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 u0x020000e9, ; uint32_t type_token_id
		i32 1031; uint32_t java_map_index
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 u0x020000ea, ; uint32_t type_token_id
		i32 939; uint32_t java_map_index
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 u0x020000eb, ; uint32_t type_token_id
		i32 428; uint32_t java_map_index
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 u0x020000ec, ; uint32_t type_token_id
		i32 1293; uint32_t java_map_index
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 u0x020000ed, ; uint32_t type_token_id
		i32 1022; uint32_t java_map_index
	} ; 103
], align 16

@module28_managed_to_java_duplicates = internal dso_local constant [35 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 216; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 466; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 203; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000021, ; uint32_t type_token_id
		i32 1134; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000025, ; uint32_t type_token_id
		i32 39; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 542; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 70; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200002e, ; uint32_t type_token_id
		i32 870; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000032, ; uint32_t type_token_id
		i32 384; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000036, ; uint32_t type_token_id
		i32 583; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 1166; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 904; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000042, ; uint32_t type_token_id
		i32 1122; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 303; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 79; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 698; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000052, ; uint32_t type_token_id
		i32 999; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 751; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000058, ; uint32_t type_token_id
		i32 1276; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 1258; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000062, ; uint32_t type_token_id
		i32 1184; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 477; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 320; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 1096; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000072, ; uint32_t type_token_id
		i32 1236; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000076, ; uint32_t type_token_id
		i32 984; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 723; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x020000b0, ; uint32_t type_token_id
		i32 1102; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x020000b2, ; uint32_t type_token_id
		i32 362; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x020000b4, ; uint32_t type_token_id
		i32 1170; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x020000b6, ; uint32_t type_token_id
		i32 674; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x020000c5, ; uint32_t type_token_id
		i32 297; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x020000c9, ; uint32_t type_token_id
		i32 467; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x020000cd, ; uint32_t type_token_id
		i32 421; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x020000da, ; uint32_t type_token_id
		i32 644; uint32_t java_map_index
	} ; 34
], align 16

@module29_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x020000a7, ; uint32_t type_token_id
		i32 1172; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x020000a8, ; uint32_t type_token_id
		i32 525; uint32_t java_map_index
	} ; 1
], align 16

@module30_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000002, ; uint32_t type_token_id
		i32 414; uint32_t java_map_index
	} ; 0
], align 4

@module31_managed_to_java = internal dso_local constant [41 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 290; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 354; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1103; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 81; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 1019; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000053, ; uint32_t type_token_id
		i32 378; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 412; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 83; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000056, ; uint32_t type_token_id
		i32 553; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000058, ; uint32_t type_token_id
		i32 489; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000059, ; uint32_t type_token_id
		i32 754; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 752; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 556; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 464; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 349; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000061, ; uint32_t type_token_id
		i32 1307; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000062, ; uint32_t type_token_id
		i32 928; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000063, ; uint32_t type_token_id
		i32 374; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000065, ; uint32_t type_token_id
		i32 37; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000067, ; uint32_t type_token_id
		i32 529; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000069, ; uint32_t type_token_id
		i32 510; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 417; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 959; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 901; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 724; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000073, ; uint32_t type_token_id
		i32 186; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000074, ; uint32_t type_token_id
		i32 1290; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000076, ; uint32_t type_token_id
		i32 291; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 649; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 115; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 560; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 1179; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000080, ; uint32_t type_token_id
		i32 923; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x02000083, ; uint32_t type_token_id
		i32 1375; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000084, ; uint32_t type_token_id
		i32 586; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000085, ; uint32_t type_token_id
		i32 1202; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000087, ; uint32_t type_token_id
		i32 557; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000088, ; uint32_t type_token_id
		i32 54; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 1095; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000099, ; uint32_t type_token_id
		i32 1347; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 109; uint32_t java_map_index
	} ; 40
], align 16

@module31_managed_to_java_duplicates = internal dso_local constant [21 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 354; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 1103; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000052, ; uint32_t type_token_id
		i32 1019; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000057, ; uint32_t type_token_id
		i32 553; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 752; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 464; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000060, ; uint32_t type_token_id
		i32 349; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000064, ; uint32_t type_token_id
		i32 374; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 928; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000068, ; uint32_t type_token_id
		i32 529; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 417; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 510; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 724; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000075, ; uint32_t type_token_id
		i32 1290; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000077, ; uint32_t type_token_id
		i32 291; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 115; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000081, ; uint32_t type_token_id
		i32 923; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000086, ; uint32_t type_token_id
		i32 586; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000089, ; uint32_t type_token_id
		i32 54; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200008b, ; uint32_t type_token_id
		i32 1095; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 109; uint32_t java_map_index
	} ; 20
], align 16

@module32_managed_to_java = internal dso_local constant [20 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 1272; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 1094; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000025, ; uint32_t type_token_id
		i32 375; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000026, ; uint32_t type_token_id
		i32 486; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 854; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 563; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 1200; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 295; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 346; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200002e, ; uint32_t type_token_id
		i32 424; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000030, ; uint32_t type_token_id
		i32 1112; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000032, ; uint32_t type_token_id
		i32 867; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 598; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 330; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 385; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 722; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 1160; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1322; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 436; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 1054; uint32_t java_map_index
	} ; 19
], align 16

@module32_managed_to_java_duplicates = internal dso_local constant [10 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 854; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 295; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 424; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000031, ; uint32_t type_token_id
		i32 1112; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000033, ; uint32_t type_token_id
		i32 867; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 346; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 330; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 385; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 1160; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 1054; uint32_t java_map_index
	} ; 9
], align 16

@module33_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 283; uint32_t java_map_index
	} ; 0
], align 4

@module34_managed_to_java = internal dso_local constant [11 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 199; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 1157; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 515; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 604; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 1212; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 830; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 855; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 356; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 778; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 443; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 609; uint32_t java_map_index
	} ; 10
], align 16

@module34_managed_to_java_duplicates = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 515; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 604; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 1212; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 830; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 855; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 356; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 778; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 443; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 199; uint32_t java_map_index
	} ; 8
], align 16

@module35_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000003, ; uint32_t type_token_id
		i32 223; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 834; uint32_t java_map_index
	} ; 1
], align 16

@module35_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 834; uint32_t java_map_index
	} ; 0
], align 4

@module36_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 1069; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 397; uint32_t java_map_index
	} ; 1
], align 16

@module37_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 831; uint32_t java_map_index
	} ; 0
], align 4

@module37_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 831; uint32_t java_map_index
	} ; 0
], align 4

@module38_managed_to_java = internal dso_local constant [24 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 880; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 956; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 248; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 114; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 1259; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 1056; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 846; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 118; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 1012; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000021, ; uint32_t type_token_id
		i32 1060; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 620; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000025, ; uint32_t type_token_id
		i32 1161; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 379; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 1221; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 898; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 804; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 701; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 476; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 1311; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000031, ; uint32_t type_token_id
		i32 342; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000033, ; uint32_t type_token_id
		i32 1360; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000035, ; uint32_t type_token_id
		i32 1233; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 177; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000039, ; uint32_t type_token_id
		i32 626; uint32_t java_map_index
	} ; 23
], align 16

@module38_managed_to_java_duplicates = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 880; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 956; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 248; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 114; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 1259; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 1056; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 846; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 118; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000022, ; uint32_t type_token_id
		i32 1060; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 620; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000026, ; uint32_t type_token_id
		i32 1161; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 701; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200002e, ; uint32_t type_token_id
		i32 476; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000030, ; uint32_t type_token_id
		i32 1311; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000032, ; uint32_t type_token_id
		i32 342; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000034, ; uint32_t type_token_id
		i32 1360; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000036, ; uint32_t type_token_id
		i32 1233; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000038, ; uint32_t type_token_id
		i32 177; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 626; uint32_t java_map_index
	} ; 18
], align 16

@module39_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 559; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 549; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 347; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 634; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1332; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 1111; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 996; uint32_t java_map_index
	} ; 6
], align 16

@module39_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 549; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 347; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 1111; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 1332; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 634; uint32_t java_map_index
	} ; 4
], align 16

@module40_managed_to_java = internal dso_local constant [539 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x020000b1, ; uint32_t type_token_id
		i32 712; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x020000b2, ; uint32_t type_token_id
		i32 716; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 274; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 973; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x020000ba, ; uint32_t type_token_id
		i32 522; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x020000bd, ; uint32_t type_token_id
		i32 1357; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 219; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 665; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 178; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x020000c4, ; uint32_t type_token_id
		i32 410; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x020000c6, ; uint32_t type_token_id
		i32 1277; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x020000c8, ; uint32_t type_token_id
		i32 737; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x020000ca, ; uint32_t type_token_id
		i32 892; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x020000cc, ; uint32_t type_token_id
		i32 1181; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x020000ce, ; uint32_t type_token_id
		i32 1007; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x020000d0, ; uint32_t type_token_id
		i32 740; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x020000d2, ; uint32_t type_token_id
		i32 5; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x020000d3, ; uint32_t type_token_id
		i32 18; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x020000d4, ; uint32_t type_token_id
		i32 136; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x020000d6, ; uint32_t type_token_id
		i32 920; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x020000d8, ; uint32_t type_token_id
		i32 117; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x020000d9, ; uint32_t type_token_id
		i32 1053; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x020000db, ; uint32_t type_token_id
		i32 1117; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x020000dc, ; uint32_t type_token_id
		i32 189; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x020000dd, ; uint32_t type_token_id
		i32 980; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x020000df, ; uint32_t type_token_id
		i32 1210; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x020000e1, ; uint32_t type_token_id
		i32 584; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x020000e3, ; uint32_t type_token_id
		i32 204; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x020000e5, ; uint32_t type_token_id
		i32 638; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x020000e7, ; uint32_t type_token_id
		i32 429; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x020000ea, ; uint32_t type_token_id
		i32 150; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x020000ec, ; uint32_t type_token_id
		i32 1196; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x020000ee, ; uint32_t type_token_id
		i32 193; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x020000ef, ; uint32_t type_token_id
		i32 420; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x020000f1, ; uint32_t type_token_id
		i32 401; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x020000f3, ; uint32_t type_token_id
		i32 201; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x020000f4, ; uint32_t type_token_id
		i32 1018; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x020000f6, ; uint32_t type_token_id
		i32 319; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x020000f7, ; uint32_t type_token_id
		i32 1124; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x020000f9, ; uint32_t type_token_id
		i32 652; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x020000fa, ; uint32_t type_token_id
		i32 965; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x020000fc, ; uint32_t type_token_id
		i32 217; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x020000fd, ; uint32_t type_token_id
		i32 1309; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x020000fe, ; uint32_t type_token_id
		i32 1011; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x020000ff, ; uint32_t type_token_id
		i32 762; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x02000100, ; uint32_t type_token_id
		i32 587; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x02000101, ; uint32_t type_token_id
		i32 14; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x02000102, ; uint32_t type_token_id
		i32 1227; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x02000103, ; uint32_t type_token_id
		i32 1037; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x02000104, ; uint32_t type_token_id
		i32 1231; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x02000105, ; uint32_t type_token_id
		i32 238; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x02000107, ; uint32_t type_token_id
		i32 340; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x0200010a, ; uint32_t type_token_id
		i32 1062; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x0200010c, ; uint32_t type_token_id
		i32 982; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x0200010d, ; uint32_t type_token_id
		i32 0; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x02000110, ; uint32_t type_token_id
		i32 226; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x02000111, ; uint32_t type_token_id
		i32 1371; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x02000114, ; uint32_t type_token_id
		i32 1074; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x02000115, ; uint32_t type_token_id
		i32 1232; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x02000117, ; uint32_t type_token_id
		i32 628; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x0200011a, ; uint32_t type_token_id
		i32 6; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x0200011e, ; uint32_t type_token_id
		i32 519; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x0200011f, ; uint32_t type_token_id
		i32 1070; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x02000120, ; uint32_t type_token_id
		i32 469; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x02000121, ; uint32_t type_token_id
		i32 906; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x02000122, ; uint32_t type_token_id
		i32 1381; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x02000125, ; uint32_t type_token_id
		i32 1026; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x02000129, ; uint32_t type_token_id
		i32 631; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x0200012a, ; uint32_t type_token_id
		i32 233; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x0200012f, ; uint32_t type_token_id
		i32 1014; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x02000130, ; uint32_t type_token_id
		i32 418; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x02000132, ; uint32_t type_token_id
		i32 1068; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x02000133, ; uint32_t type_token_id
		i32 1385; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x02000136, ; uint32_t type_token_id
		i32 645; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x0200013b, ; uint32_t type_token_id
		i32 1253; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x0200013c, ; uint32_t type_token_id
		i32 215; uint32_t java_map_index
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 u0x0200013d, ; uint32_t type_token_id
		i32 786; uint32_t java_map_index
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 u0x0200013e, ; uint32_t type_token_id
		i32 1139; uint32_t java_map_index
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 u0x02000140, ; uint32_t type_token_id
		i32 62; uint32_t java_map_index
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 u0x02000141, ; uint32_t type_token_id
		i32 505; uint32_t java_map_index
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 u0x02000142, ; uint32_t type_token_id
		i32 1268; uint32_t java_map_index
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 u0x02000143, ; uint32_t type_token_id
		i32 53; uint32_t java_map_index
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 u0x02000145, ; uint32_t type_token_id
		i32 1207; uint32_t java_map_index
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 u0x02000147, ; uint32_t type_token_id
		i32 805; uint32_t java_map_index
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 u0x02000149, ; uint32_t type_token_id
		i32 82; uint32_t java_map_index
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 u0x0200014b, ; uint32_t type_token_id
		i32 746; uint32_t java_map_index
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 u0x0200014c, ; uint32_t type_token_id
		i32 1225; uint32_t java_map_index
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 u0x0200014d, ; uint32_t type_token_id
		i32 407; uint32_t java_map_index
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 u0x0200014e, ; uint32_t type_token_id
		i32 847; uint32_t java_map_index
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 u0x02000150, ; uint32_t type_token_id
		i32 1033; uint32_t java_map_index
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 u0x02000152, ; uint32_t type_token_id
		i32 1287; uint32_t java_map_index
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 u0x02000153, ; uint32_t type_token_id
		i32 1376; uint32_t java_map_index
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 u0x02000154, ; uint32_t type_token_id
		i32 206; uint32_t java_map_index
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 u0x02000156, ; uint32_t type_token_id
		i32 874; uint32_t java_map_index
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 u0x02000157, ; uint32_t type_token_id
		i32 883; uint32_t java_map_index
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 u0x02000158, ; uint32_t type_token_id
		i32 124; uint32_t java_map_index
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 u0x0200015a, ; uint32_t type_token_id
		i32 214; uint32_t java_map_index
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 u0x0200015b, ; uint32_t type_token_id
		i32 1045; uint32_t java_map_index
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 u0x0200015c, ; uint32_t type_token_id
		i32 636; uint32_t java_map_index
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 u0x0200015e, ; uint32_t type_token_id
		i32 1350; uint32_t java_map_index
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 u0x0200015f, ; uint32_t type_token_id
		i32 1017; uint32_t java_map_index
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 u0x02000160, ; uint32_t type_token_id
		i32 1085; uint32_t java_map_index
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 u0x02000163, ; uint32_t type_token_id
		i32 1147; uint32_t java_map_index
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 u0x02000164, ; uint32_t type_token_id
		i32 160; uint32_t java_map_index
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 u0x02000166, ; uint32_t type_token_id
		i32 278; uint32_t java_map_index
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 u0x02000167, ; uint32_t type_token_id
		i32 969; uint32_t java_map_index
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 u0x02000168, ; uint32_t type_token_id
		i32 1216; uint32_t java_map_index
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 u0x02000169, ; uint32_t type_token_id
		i32 672; uint32_t java_map_index
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 u0x0200016a, ; uint32_t type_token_id
		i32 706; uint32_t java_map_index
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 u0x0200016d, ; uint32_t type_token_id
		i32 1316; uint32_t java_map_index
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 u0x0200016f, ; uint32_t type_token_id
		i32 1323; uint32_t java_map_index
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 u0x02000170, ; uint32_t type_token_id
		i32 1303; uint32_t java_map_index
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 u0x02000173, ; uint32_t type_token_id
		i32 845; uint32_t java_map_index
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 u0x02000176, ; uint32_t type_token_id
		i32 271; uint32_t java_map_index
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 u0x02000177, ; uint32_t type_token_id
		i32 65; uint32_t java_map_index
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 u0x02000179, ; uint32_t type_token_id
		i32 1226; uint32_t java_map_index
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 u0x0200017c, ; uint32_t type_token_id
		i32 840; uint32_t java_map_index
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 u0x0200017f, ; uint32_t type_token_id
		i32 765; uint32_t java_map_index
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 u0x02000182, ; uint32_t type_token_id
		i32 405; uint32_t java_map_index
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 u0x02000184, ; uint32_t type_token_id
		i32 914; uint32_t java_map_index
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 u0x02000187, ; uint32_t type_token_id
		i32 668; uint32_t java_map_index
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 u0x02000188, ; uint32_t type_token_id
		i32 530; uint32_t java_map_index
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 u0x0200018a, ; uint32_t type_token_id
		i32 1016; uint32_t java_map_index
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 u0x0200018c, ; uint32_t type_token_id
		i32 372; uint32_t java_map_index
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 u0x0200018e, ; uint32_t type_token_id
		i32 78; uint32_t java_map_index
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 u0x02000191, ; uint32_t type_token_id
		i32 337; uint32_t java_map_index
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 u0x02000192, ; uint32_t type_token_id
		i32 305; uint32_t java_map_index
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 u0x02000193, ; uint32_t type_token_id
		i32 231; uint32_t java_map_index
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 u0x02000194, ; uint32_t type_token_id
		i32 562; uint32_t java_map_index
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 u0x02000195, ; uint32_t type_token_id
		i32 987; uint32_t java_map_index
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 u0x02000196, ; uint32_t type_token_id
		i32 235; uint32_t java_map_index
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 u0x02000197, ; uint32_t type_token_id
		i32 775; uint32_t java_map_index
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 u0x02000198, ; uint32_t type_token_id
		i32 20; uint32_t java_map_index
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 u0x0200019a, ; uint32_t type_token_id
		i32 699; uint32_t java_map_index
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 u0x0200019c, ; uint32_t type_token_id
		i32 1377; uint32_t java_map_index
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 u0x0200019d, ; uint32_t type_token_id
		i32 713; uint32_t java_map_index
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 u0x0200019f, ; uint32_t type_token_id
		i32 815; uint32_t java_map_index
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 u0x020001a1, ; uint32_t type_token_id
		i32 237; uint32_t java_map_index
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 u0x020001a3, ; uint32_t type_token_id
		i32 108; uint32_t java_map_index
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 u0x020001a5, ; uint32_t type_token_id
		i32 791; uint32_t java_map_index
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 u0x020001a6, ; uint32_t type_token_id
		i32 640; uint32_t java_map_index
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 u0x020001a7, ; uint32_t type_token_id
		i32 582; uint32_t java_map_index
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 u0x020001a8, ; uint32_t type_token_id
		i32 1340; uint32_t java_map_index
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 u0x020001a9, ; uint32_t type_token_id
		i32 383; uint32_t java_map_index
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 u0x020001aa, ; uint32_t type_token_id
		i32 422; uint32_t java_map_index
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 u0x020001ab, ; uint32_t type_token_id
		i32 1220; uint32_t java_map_index
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 u0x020001ad, ; uint32_t type_token_id
		i32 301; uint32_t java_map_index
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 u0x020001ae, ; uint32_t type_token_id
		i32 286; uint32_t java_map_index
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 u0x020001b0, ; uint32_t type_token_id
		i32 261; uint32_t java_map_index
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 u0x020001b2, ; uint32_t type_token_id
		i32 153; uint32_t java_map_index
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 u0x020001b4, ; uint32_t type_token_id
		i32 322; uint32_t java_map_index
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 u0x020001b6, ; uint32_t type_token_id
		i32 650; uint32_t java_map_index
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 u0x020001b7, ; uint32_t type_token_id
		i32 1125; uint32_t java_map_index
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 u0x020001b8, ; uint32_t type_token_id
		i32 889; uint32_t java_map_index
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 u0x020001b9, ; uint32_t type_token_id
		i32 164; uint32_t java_map_index
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 u0x020001ba, ; uint32_t type_token_id
		i32 613; uint32_t java_map_index
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 u0x020001bb, ; uint32_t type_token_id
		i32 130; uint32_t java_map_index
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 u0x020001bc, ; uint32_t type_token_id
		i32 863; uint32_t java_map_index
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 u0x020001bd, ; uint32_t type_token_id
		i32 56; uint32_t java_map_index
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 u0x020001be, ; uint32_t type_token_id
		i32 1138; uint32_t java_map_index
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 u0x020001bf, ; uint32_t type_token_id
		i32 447; uint32_t java_map_index
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 u0x020001c1, ; uint32_t type_token_id
		i32 460; uint32_t java_map_index
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 u0x020001c2, ; uint32_t type_token_id
		i32 50; uint32_t java_map_index
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 u0x020001c3, ; uint32_t type_token_id
		i32 468; uint32_t java_map_index
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 u0x020001c4, ; uint32_t type_token_id
		i32 1367; uint32_t java_map_index
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 u0x020001c6, ; uint32_t type_token_id
		i32 390; uint32_t java_map_index
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 u0x020001c7, ; uint32_t type_token_id
		i32 415; uint32_t java_map_index
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 u0x020001ca, ; uint32_t type_token_id
		i32 168; uint32_t java_map_index
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 u0x020001cc, ; uint32_t type_token_id
		i32 827; uint32_t java_map_index
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 u0x020001ce, ; uint32_t type_token_id
		i32 1199; uint32_t java_map_index
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 u0x020001d0, ; uint32_t type_token_id
		i32 159; uint32_t java_map_index
	}, ; 170
	%struct.TypeMapModuleEntry {
		i32 u0x020001d1, ; uint32_t type_token_id
		i32 1015; uint32_t java_map_index
	}, ; 171
	%struct.TypeMapModuleEntry {
		i32 u0x020001d2, ; uint32_t type_token_id
		i32 673; uint32_t java_map_index
	}, ; 172
	%struct.TypeMapModuleEntry {
		i32 u0x020001d4, ; uint32_t type_token_id
		i32 92; uint32_t java_map_index
	}, ; 173
	%struct.TypeMapModuleEntry {
		i32 u0x020001d5, ; uint32_t type_token_id
		i32 1186; uint32_t java_map_index
	}, ; 174
	%struct.TypeMapModuleEntry {
		i32 u0x020001d7, ; uint32_t type_token_id
		i32 565; uint32_t java_map_index
	}, ; 175
	%struct.TypeMapModuleEntry {
		i32 u0x020001d8, ; uint32_t type_token_id
		i32 222; uint32_t java_map_index
	}, ; 176
	%struct.TypeMapModuleEntry {
		i32 u0x020001db, ; uint32_t type_token_id
		i32 1101; uint32_t java_map_index
	}, ; 177
	%struct.TypeMapModuleEntry {
		i32 u0x020001dd, ; uint32_t type_token_id
		i32 692; uint32_t java_map_index
	}, ; 178
	%struct.TypeMapModuleEntry {
		i32 u0x020001de, ; uint32_t type_token_id
		i32 1038; uint32_t java_map_index
	}, ; 179
	%struct.TypeMapModuleEntry {
		i32 u0x020001e1, ; uint32_t type_token_id
		i32 236; uint32_t java_map_index
	}, ; 180
	%struct.TypeMapModuleEntry {
		i32 u0x020001e2, ; uint32_t type_token_id
		i32 523; uint32_t java_map_index
	}, ; 181
	%struct.TypeMapModuleEntry {
		i32 u0x020001e4, ; uint32_t type_token_id
		i32 714; uint32_t java_map_index
	}, ; 182
	%struct.TypeMapModuleEntry {
		i32 u0x020001e5, ; uint32_t type_token_id
		i32 841; uint32_t java_map_index
	}, ; 183
	%struct.TypeMapModuleEntry {
		i32 u0x020001e7, ; uint32_t type_token_id
		i32 1320; uint32_t java_map_index
	}, ; 184
	%struct.TypeMapModuleEntry {
		i32 u0x020001e8, ; uint32_t type_token_id
		i32 386; uint32_t java_map_index
	}, ; 185
	%struct.TypeMapModuleEntry {
		i32 u0x020001e9, ; uint32_t type_token_id
		i32 119; uint32_t java_map_index
	}, ; 186
	%struct.TypeMapModuleEntry {
		i32 u0x020001eb, ; uint32_t type_token_id
		i32 207; uint32_t java_map_index
	}, ; 187
	%struct.TypeMapModuleEntry {
		i32 u0x020001ec, ; uint32_t type_token_id
		i32 872; uint32_t java_map_index
	}, ; 188
	%struct.TypeMapModuleEntry {
		i32 u0x020001ed, ; uint32_t type_token_id
		i32 339; uint32_t java_map_index
	}, ; 189
	%struct.TypeMapModuleEntry {
		i32 u0x020001f0, ; uint32_t type_token_id
		i32 49; uint32_t java_map_index
	}, ; 190
	%struct.TypeMapModuleEntry {
		i32 u0x020001f1, ; uint32_t type_token_id
		i32 162; uint32_t java_map_index
	}, ; 191
	%struct.TypeMapModuleEntry {
		i32 u0x020001f7, ; uint32_t type_token_id
		i32 285; uint32_t java_map_index
	}, ; 192
	%struct.TypeMapModuleEntry {
		i32 u0x020001f9, ; uint32_t type_token_id
		i32 875; uint32_t java_map_index
	}, ; 193
	%struct.TypeMapModuleEntry {
		i32 u0x020001fb, ; uint32_t type_token_id
		i32 967; uint32_t java_map_index
	}, ; 194
	%struct.TypeMapModuleEntry {
		i32 u0x020001fc, ; uint32_t type_token_id
		i32 1001; uint32_t java_map_index
	}, ; 195
	%struct.TypeMapModuleEntry {
		i32 u0x020001fd, ; uint32_t type_token_id
		i32 1158; uint32_t java_map_index
	}, ; 196
	%struct.TypeMapModuleEntry {
		i32 u0x020001fe, ; uint32_t type_token_id
		i32 296; uint32_t java_map_index
	}, ; 197
	%struct.TypeMapModuleEntry {
		i32 u0x020001ff, ; uint32_t type_token_id
		i32 1105; uint32_t java_map_index
	}, ; 198
	%struct.TypeMapModuleEntry {
		i32 u0x02000200, ; uint32_t type_token_id
		i32 888; uint32_t java_map_index
	}, ; 199
	%struct.TypeMapModuleEntry {
		i32 u0x02000204, ; uint32_t type_token_id
		i32 998; uint32_t java_map_index
	}, ; 200
	%struct.TypeMapModuleEntry {
		i32 u0x02000205, ; uint32_t type_token_id
		i32 1091; uint32_t java_map_index
	}, ; 201
	%struct.TypeMapModuleEntry {
		i32 u0x02000207, ; uint32_t type_token_id
		i32 423; uint32_t java_map_index
	}, ; 202
	%struct.TypeMapModuleEntry {
		i32 u0x02000208, ; uint32_t type_token_id
		i32 1243; uint32_t java_map_index
	}, ; 203
	%struct.TypeMapModuleEntry {
		i32 u0x0200020a, ; uint32_t type_token_id
		i32 25; uint32_t java_map_index
	}, ; 204
	%struct.TypeMapModuleEntry {
		i32 u0x0200020d, ; uint32_t type_token_id
		i32 1284; uint32_t java_map_index
	}, ; 205
	%struct.TypeMapModuleEntry {
		i32 u0x0200020e, ; uint32_t type_token_id
		i32 1304; uint32_t java_map_index
	}, ; 206
	%struct.TypeMapModuleEntry {
		i32 u0x02000210, ; uint32_t type_token_id
		i32 368; uint32_t java_map_index
	}, ; 207
	%struct.TypeMapModuleEntry {
		i32 u0x02000213, ; uint32_t type_token_id
		i32 989; uint32_t java_map_index
	}, ; 208
	%struct.TypeMapModuleEntry {
		i32 u0x02000214, ; uint32_t type_token_id
		i32 107; uint32_t java_map_index
	}, ; 209
	%struct.TypeMapModuleEntry {
		i32 u0x02000217, ; uint32_t type_token_id
		i32 1115; uint32_t java_map_index
	}, ; 210
	%struct.TypeMapModuleEntry {
		i32 u0x02000218, ; uint32_t type_token_id
		i32 329; uint32_t java_map_index
	}, ; 211
	%struct.TypeMapModuleEntry {
		i32 u0x0200021b, ; uint32_t type_token_id
		i32 858; uint32_t java_map_index
	}, ; 212
	%struct.TypeMapModuleEntry {
		i32 u0x0200021c, ; uint32_t type_token_id
		i32 1251; uint32_t java_map_index
	}, ; 213
	%struct.TypeMapModuleEntry {
		i32 u0x0200021f, ; uint32_t type_token_id
		i32 974; uint32_t java_map_index
	}, ; 214
	%struct.TypeMapModuleEntry {
		i32 u0x02000231, ; uint32_t type_token_id
		i32 480; uint32_t java_map_index
	}, ; 215
	%struct.TypeMapModuleEntry {
		i32 u0x02000232, ; uint32_t type_token_id
		i32 281; uint32_t java_map_index
	}, ; 216
	%struct.TypeMapModuleEntry {
		i32 u0x02000233, ; uint32_t type_token_id
		i32 574; uint32_t java_map_index
	}, ; 217
	%struct.TypeMapModuleEntry {
		i32 u0x02000234, ; uint32_t type_token_id
		i32 687; uint32_t java_map_index
	}, ; 218
	%struct.TypeMapModuleEntry {
		i32 u0x02000235, ; uint32_t type_token_id
		i32 1260; uint32_t java_map_index
	}, ; 219
	%struct.TypeMapModuleEntry {
		i32 u0x02000237, ; uint32_t type_token_id
		i32 997; uint32_t java_map_index
	}, ; 220
	%struct.TypeMapModuleEntry {
		i32 u0x02000238, ; uint32_t type_token_id
		i32 1234; uint32_t java_map_index
	}, ; 221
	%struct.TypeMapModuleEntry {
		i32 u0x0200023a, ; uint32_t type_token_id
		i32 761; uint32_t java_map_index
	}, ; 222
	%struct.TypeMapModuleEntry {
		i32 u0x0200023b, ; uint32_t type_token_id
		i32 621; uint32_t java_map_index
	}, ; 223
	%struct.TypeMapModuleEntry {
		i32 u0x0200023f, ; uint32_t type_token_id
		i32 475; uint32_t java_map_index
	}, ; 224
	%struct.TypeMapModuleEntry {
		i32 u0x02000242, ; uint32_t type_token_id
		i32 472; uint32_t java_map_index
	}, ; 225
	%struct.TypeMapModuleEntry {
		i32 u0x02000243, ; uint32_t type_token_id
		i32 106; uint32_t java_map_index
	}, ; 226
	%struct.TypeMapModuleEntry {
		i32 u0x02000244, ; uint32_t type_token_id
		i32 848; uint32_t java_map_index
	}, ; 227
	%struct.TypeMapModuleEntry {
		i32 u0x02000246, ; uint32_t type_token_id
		i32 663; uint32_t java_map_index
	}, ; 228
	%struct.TypeMapModuleEntry {
		i32 u0x02000248, ; uint32_t type_token_id
		i32 110; uint32_t java_map_index
	}, ; 229
	%struct.TypeMapModuleEntry {
		i32 u0x0200024c, ; uint32_t type_token_id
		i32 454; uint32_t java_map_index
	}, ; 230
	%struct.TypeMapModuleEntry {
		i32 u0x0200024d, ; uint32_t type_token_id
		i32 1354; uint32_t java_map_index
	}, ; 231
	%struct.TypeMapModuleEntry {
		i32 u0x0200024f, ; uint32_t type_token_id
		i32 324; uint32_t java_map_index
	}, ; 232
	%struct.TypeMapModuleEntry {
		i32 u0x02000252, ; uint32_t type_token_id
		i32 247; uint32_t java_map_index
	}, ; 233
	%struct.TypeMapModuleEntry {
		i32 u0x02000254, ; uint32_t type_token_id
		i32 1193; uint32_t java_map_index
	}, ; 234
	%struct.TypeMapModuleEntry {
		i32 u0x02000256, ; uint32_t type_token_id
		i32 260; uint32_t java_map_index
	}, ; 235
	%struct.TypeMapModuleEntry {
		i32 u0x02000259, ; uint32_t type_token_id
		i32 331; uint32_t java_map_index
	}, ; 236
	%struct.TypeMapModuleEntry {
		i32 u0x0200025b, ; uint32_t type_token_id
		i32 536; uint32_t java_map_index
	}, ; 237
	%struct.TypeMapModuleEntry {
		i32 u0x0200025d, ; uint32_t type_token_id
		i32 1104; uint32_t java_map_index
	}, ; 238
	%struct.TypeMapModuleEntry {
		i32 u0x02000261, ; uint32_t type_token_id
		i32 181; uint32_t java_map_index
	}, ; 239
	%struct.TypeMapModuleEntry {
		i32 u0x02000263, ; uint32_t type_token_id
		i32 1048; uint32_t java_map_index
	}, ; 240
	%struct.TypeMapModuleEntry {
		i32 u0x02000265, ; uint32_t type_token_id
		i32 496; uint32_t java_map_index
	}, ; 241
	%struct.TypeMapModuleEntry {
		i32 u0x02000267, ; uint32_t type_token_id
		i32 776; uint32_t java_map_index
	}, ; 242
	%struct.TypeMapModuleEntry {
		i32 u0x02000269, ; uint32_t type_token_id
		i32 321; uint32_t java_map_index
	}, ; 243
	%struct.TypeMapModuleEntry {
		i32 u0x0200026b, ; uint32_t type_token_id
		i32 1050; uint32_t java_map_index
	}, ; 244
	%struct.TypeMapModuleEntry {
		i32 u0x0200026d, ; uint32_t type_token_id
		i32 148; uint32_t java_map_index
	}, ; 245
	%struct.TypeMapModuleEntry {
		i32 u0x0200026f, ; uint32_t type_token_id
		i32 98; uint32_t java_map_index
	}, ; 246
	%struct.TypeMapModuleEntry {
		i32 u0x02000270, ; uint32_t type_token_id
		i32 129; uint32_t java_map_index
	}, ; 247
	%struct.TypeMapModuleEntry {
		i32 u0x02000273, ; uint32_t type_token_id
		i32 455; uint32_t java_map_index
	}, ; 248
	%struct.TypeMapModuleEntry {
		i32 u0x02000275, ; uint32_t type_token_id
		i32 946; uint32_t java_map_index
	}, ; 249
	%struct.TypeMapModuleEntry {
		i32 u0x02000276, ; uint32_t type_token_id
		i32 554; uint32_t java_map_index
	}, ; 250
	%struct.TypeMapModuleEntry {
		i32 u0x0200027e, ; uint32_t type_token_id
		i32 764; uint32_t java_map_index
	}, ; 251
	%struct.TypeMapModuleEntry {
		i32 u0x02000283, ; uint32_t type_token_id
		i32 42; uint32_t java_map_index
	}, ; 252
	%struct.TypeMapModuleEntry {
		i32 u0x02000286, ; uint32_t type_token_id
		i32 462; uint32_t java_map_index
	}, ; 253
	%struct.TypeMapModuleEntry {
		i32 u0x02000287, ; uint32_t type_token_id
		i32 618; uint32_t java_map_index
	}, ; 254
	%struct.TypeMapModuleEntry {
		i32 u0x02000289, ; uint32_t type_token_id
		i32 1082; uint32_t java_map_index
	}, ; 255
	%struct.TypeMapModuleEntry {
		i32 u0x0200028b, ; uint32_t type_token_id
		i32 209; uint32_t java_map_index
	}, ; 256
	%struct.TypeMapModuleEntry {
		i32 u0x0200028e, ; uint32_t type_token_id
		i32 734; uint32_t java_map_index
	}, ; 257
	%struct.TypeMapModuleEntry {
		i32 u0x02000292, ; uint32_t type_token_id
		i32 1318; uint32_t java_map_index
	}, ; 258
	%struct.TypeMapModuleEntry {
		i32 u0x02000293, ; uint32_t type_token_id
		i32 325; uint32_t java_map_index
	}, ; 259
	%struct.TypeMapModuleEntry {
		i32 u0x02000294, ; uint32_t type_token_id
		i32 710; uint32_t java_map_index
	}, ; 260
	%struct.TypeMapModuleEntry {
		i32 u0x02000295, ; uint32_t type_token_id
		i32 15; uint32_t java_map_index
	}, ; 261
	%struct.TypeMapModuleEntry {
		i32 u0x02000296, ; uint32_t type_token_id
		i32 691; uint32_t java_map_index
	}, ; 262
	%struct.TypeMapModuleEntry {
		i32 u0x0200029a, ; uint32_t type_token_id
		i32 839; uint32_t java_map_index
	}, ; 263
	%struct.TypeMapModuleEntry {
		i32 u0x0200029f, ; uint32_t type_token_id
		i32 1098; uint32_t java_map_index
	}, ; 264
	%struct.TypeMapModuleEntry {
		i32 u0x020002a1, ; uint32_t type_token_id
		i32 1203; uint32_t java_map_index
	}, ; 265
	%struct.TypeMapModuleEntry {
		i32 u0x020002a4, ; uint32_t type_token_id
		i32 979; uint32_t java_map_index
	}, ; 266
	%struct.TypeMapModuleEntry {
		i32 u0x020002a5, ; uint32_t type_token_id
		i32 1148; uint32_t java_map_index
	}, ; 267
	%struct.TypeMapModuleEntry {
		i32 u0x020002a6, ; uint32_t type_token_id
		i32 707; uint32_t java_map_index
	}, ; 268
	%struct.TypeMapModuleEntry {
		i32 u0x020002a7, ; uint32_t type_token_id
		i32 1372; uint32_t java_map_index
	}, ; 269
	%struct.TypeMapModuleEntry {
		i32 u0x020002a8, ; uint32_t type_token_id
		i32 315; uint32_t java_map_index
	}, ; 270
	%struct.TypeMapModuleEntry {
		i32 u0x020002aa, ; uint32_t type_token_id
		i32 1352; uint32_t java_map_index
	}, ; 271
	%struct.TypeMapModuleEntry {
		i32 u0x020002ab, ; uint32_t type_token_id
		i32 132; uint32_t java_map_index
	}, ; 272
	%struct.TypeMapModuleEntry {
		i32 u0x020002ac, ; uint32_t type_token_id
		i32 289; uint32_t java_map_index
	}, ; 273
	%struct.TypeMapModuleEntry {
		i32 u0x020002b1, ; uint32_t type_token_id
		i32 46; uint32_t java_map_index
	}, ; 274
	%struct.TypeMapModuleEntry {
		i32 u0x020002b6, ; uint32_t type_token_id
		i32 1042; uint32_t java_map_index
	}, ; 275
	%struct.TypeMapModuleEntry {
		i32 u0x020002b7, ; uint32_t type_token_id
		i32 294; uint32_t java_map_index
	}, ; 276
	%struct.TypeMapModuleEntry {
		i32 u0x020002b8, ; uint32_t type_token_id
		i32 351; uint32_t java_map_index
	}, ; 277
	%struct.TypeMapModuleEntry {
		i32 u0x020002ba, ; uint32_t type_token_id
		i32 1189; uint32_t java_map_index
	}, ; 278
	%struct.TypeMapModuleEntry {
		i32 u0x020002bb, ; uint32_t type_token_id
		i32 953; uint32_t java_map_index
	}, ; 279
	%struct.TypeMapModuleEntry {
		i32 u0x020002bd, ; uint32_t type_token_id
		i32 268; uint32_t java_map_index
	}, ; 280
	%struct.TypeMapModuleEntry {
		i32 u0x020002be, ; uint32_t type_token_id
		i32 131; uint32_t java_map_index
	}, ; 281
	%struct.TypeMapModuleEntry {
		i32 u0x020002c2, ; uint32_t type_token_id
		i32 1321; uint32_t java_map_index
	}, ; 282
	%struct.TypeMapModuleEntry {
		i32 u0x020002c3, ; uint32_t type_token_id
		i32 304; uint32_t java_map_index
	}, ; 283
	%struct.TypeMapModuleEntry {
		i32 u0x020002c4, ; uint32_t type_token_id
		i32 143; uint32_t java_map_index
	}, ; 284
	%struct.TypeMapModuleEntry {
		i32 u0x020002c5, ; uint32_t type_token_id
		i32 440; uint32_t java_map_index
	}, ; 285
	%struct.TypeMapModuleEntry {
		i32 u0x020002c6, ; uint32_t type_token_id
		i32 1078; uint32_t java_map_index
	}, ; 286
	%struct.TypeMapModuleEntry {
		i32 u0x020002df, ; uint32_t type_token_id
		i32 820; uint32_t java_map_index
	}, ; 287
	%struct.TypeMapModuleEntry {
		i32 u0x020002e2, ; uint32_t type_token_id
		i32 1313; uint32_t java_map_index
	}, ; 288
	%struct.TypeMapModuleEntry {
		i32 u0x020002e4, ; uint32_t type_token_id
		i32 1088; uint32_t java_map_index
	}, ; 289
	%struct.TypeMapModuleEntry {
		i32 u0x020002e6, ; uint32_t type_token_id
		i32 67; uint32_t java_map_index
	}, ; 290
	%struct.TypeMapModuleEntry {
		i32 u0x020002ef, ; uint32_t type_token_id
		i32 662; uint32_t java_map_index
	}, ; 291
	%struct.TypeMapModuleEntry {
		i32 u0x020002f1, ; uint32_t type_token_id
		i32 64; uint32_t java_map_index
	}, ; 292
	%struct.TypeMapModuleEntry {
		i32 u0x020002f2, ; uint32_t type_token_id
		i32 323; uint32_t java_map_index
	}, ; 293
	%struct.TypeMapModuleEntry {
		i32 u0x020002f3, ; uint32_t type_token_id
		i32 1359; uint32_t java_map_index
	}, ; 294
	%struct.TypeMapModuleEntry {
		i32 u0x020002ff, ; uint32_t type_token_id
		i32 773; uint32_t java_map_index
	}, ; 295
	%struct.TypeMapModuleEntry {
		i32 u0x0200030a, ; uint32_t type_token_id
		i32 925; uint32_t java_map_index
	}, ; 296
	%struct.TypeMapModuleEntry {
		i32 u0x0200030b, ; uint32_t type_token_id
		i32 403; uint32_t java_map_index
	}, ; 297
	%struct.TypeMapModuleEntry {
		i32 u0x0200030d, ; uint32_t type_token_id
		i32 864; uint32_t java_map_index
	}, ; 298
	%struct.TypeMapModuleEntry {
		i32 u0x0200030e, ; uint32_t type_token_id
		i32 1044; uint32_t java_map_index
	}, ; 299
	%struct.TypeMapModuleEntry {
		i32 u0x0200030f, ; uint32_t type_token_id
		i32 538; uint32_t java_map_index
	}, ; 300
	%struct.TypeMapModuleEntry {
		i32 u0x02000310, ; uint32_t type_token_id
		i32 812; uint32_t java_map_index
	}, ; 301
	%struct.TypeMapModuleEntry {
		i32 u0x02000312, ; uint32_t type_token_id
		i32 575; uint32_t java_map_index
	}, ; 302
	%struct.TypeMapModuleEntry {
		i32 u0x02000315, ; uint32_t type_token_id
		i32 927; uint32_t java_map_index
	}, ; 303
	%struct.TypeMapModuleEntry {
		i32 u0x02000319, ; uint32_t type_token_id
		i32 120; uint32_t java_map_index
	}, ; 304
	%struct.TypeMapModuleEntry {
		i32 u0x0200031a, ; uint32_t type_token_id
		i32 220; uint32_t java_map_index
	}, ; 305
	%struct.TypeMapModuleEntry {
		i32 u0x0200031b, ; uint32_t type_token_id
		i32 250; uint32_t java_map_index
	}, ; 306
	%struct.TypeMapModuleEntry {
		i32 u0x0200031c, ; uint32_t type_token_id
		i32 619; uint32_t java_map_index
	}, ; 307
	%struct.TypeMapModuleEntry {
		i32 u0x0200031d, ; uint32_t type_token_id
		i32 444; uint32_t java_map_index
	}, ; 308
	%struct.TypeMapModuleEntry {
		i32 u0x0200031e, ; uint32_t type_token_id
		i32 1353; uint32_t java_map_index
	}, ; 309
	%struct.TypeMapModuleEntry {
		i32 u0x0200031f, ; uint32_t type_token_id
		i32 318; uint32_t java_map_index
	}, ; 310
	%struct.TypeMapModuleEntry {
		i32 u0x02000320, ; uint32_t type_token_id
		i32 1028; uint32_t java_map_index
	}, ; 311
	%struct.TypeMapModuleEntry {
		i32 u0x02000321, ; uint32_t type_token_id
		i32 491; uint32_t java_map_index
	}, ; 312
	%struct.TypeMapModuleEntry {
		i32 u0x02000322, ; uint32_t type_token_id
		i32 599; uint32_t java_map_index
	}, ; 313
	%struct.TypeMapModuleEntry {
		i32 u0x02000323, ; uint32_t type_token_id
		i32 300; uint32_t java_map_index
	}, ; 314
	%struct.TypeMapModuleEntry {
		i32 u0x02000324, ; uint32_t type_token_id
		i32 977; uint32_t java_map_index
	}, ; 315
	%struct.TypeMapModuleEntry {
		i32 u0x02000325, ; uint32_t type_token_id
		i32 795; uint32_t java_map_index
	}, ; 316
	%struct.TypeMapModuleEntry {
		i32 u0x02000326, ; uint32_t type_token_id
		i32 1187; uint32_t java_map_index
	}, ; 317
	%struct.TypeMapModuleEntry {
		i32 u0x02000327, ; uint32_t type_token_id
		i32 520; uint32_t java_map_index
	}, ; 318
	%struct.TypeMapModuleEntry {
		i32 u0x02000328, ; uint32_t type_token_id
		i32 911; uint32_t java_map_index
	}, ; 319
	%struct.TypeMapModuleEntry {
		i32 u0x02000329, ; uint32_t type_token_id
		i32 884; uint32_t java_map_index
	}, ; 320
	%struct.TypeMapModuleEntry {
		i32 u0x0200032b, ; uint32_t type_token_id
		i32 87; uint32_t java_map_index
	}, ; 321
	%struct.TypeMapModuleEntry {
		i32 u0x0200032c, ; uint32_t type_token_id
		i32 377; uint32_t java_map_index
	}, ; 322
	%struct.TypeMapModuleEntry {
		i32 u0x0200032d, ; uint32_t type_token_id
		i32 75; uint32_t java_map_index
	}, ; 323
	%struct.TypeMapModuleEntry {
		i32 u0x0200032e, ; uint32_t type_token_id
		i32 316; uint32_t java_map_index
	}, ; 324
	%struct.TypeMapModuleEntry {
		i32 u0x0200032f, ; uint32_t type_token_id
		i32 211; uint32_t java_map_index
	}, ; 325
	%struct.TypeMapModuleEntry {
		i32 u0x02000330, ; uint32_t type_token_id
		i32 435; uint32_t java_map_index
	}, ; 326
	%struct.TypeMapModuleEntry {
		i32 u0x02000331, ; uint32_t type_token_id
		i32 387; uint32_t java_map_index
	}, ; 327
	%struct.TypeMapModuleEntry {
		i32 u0x02000332, ; uint32_t type_token_id
		i32 852; uint32_t java_map_index
	}, ; 328
	%struct.TypeMapModuleEntry {
		i32 u0x02000333, ; uint32_t type_token_id
		i32 590; uint32_t java_map_index
	}, ; 329
	%struct.TypeMapModuleEntry {
		i32 u0x02000334, ; uint32_t type_token_id
		i32 926; uint32_t java_map_index
	}, ; 330
	%struct.TypeMapModuleEntry {
		i32 u0x02000335, ; uint32_t type_token_id
		i32 369; uint32_t java_map_index
	}, ; 331
	%struct.TypeMapModuleEntry {
		i32 u0x02000336, ; uint32_t type_token_id
		i32 481; uint32_t java_map_index
	}, ; 332
	%struct.TypeMapModuleEntry {
		i32 u0x02000337, ; uint32_t type_token_id
		i32 970; uint32_t java_map_index
	}, ; 333
	%struct.TypeMapModuleEntry {
		i32 u0x02000338, ; uint32_t type_token_id
		i32 169; uint32_t java_map_index
	}, ; 334
	%struct.TypeMapModuleEntry {
		i32 u0x02000339, ; uint32_t type_token_id
		i32 74; uint32_t java_map_index
	}, ; 335
	%struct.TypeMapModuleEntry {
		i32 u0x0200033a, ; uint32_t type_token_id
		i32 527; uint32_t java_map_index
	}, ; 336
	%struct.TypeMapModuleEntry {
		i32 u0x0200033b, ; uint32_t type_token_id
		i32 1300; uint32_t java_map_index
	}, ; 337
	%struct.TypeMapModuleEntry {
		i32 u0x0200033c, ; uint32_t type_token_id
		i32 1116; uint32_t java_map_index
	}, ; 338
	%struct.TypeMapModuleEntry {
		i32 u0x0200033e, ; uint32_t type_token_id
		i32 1109; uint32_t java_map_index
	}, ; 339
	%struct.TypeMapModuleEntry {
		i32 u0x0200033f, ; uint32_t type_token_id
		i32 625; uint32_t java_map_index
	}, ; 340
	%struct.TypeMapModuleEntry {
		i32 u0x02000340, ; uint32_t type_token_id
		i32 84; uint32_t java_map_index
	}, ; 341
	%struct.TypeMapModuleEntry {
		i32 u0x02000342, ; uint32_t type_token_id
		i32 97; uint32_t java_map_index
	}, ; 342
	%struct.TypeMapModuleEntry {
		i32 u0x02000343, ; uint32_t type_token_id
		i32 878; uint32_t java_map_index
	}, ; 343
	%struct.TypeMapModuleEntry {
		i32 u0x02000344, ; uint32_t type_token_id
		i32 1058; uint32_t java_map_index
	}, ; 344
	%struct.TypeMapModuleEntry {
		i32 u0x02000345, ; uint32_t type_token_id
		i32 690; uint32_t java_map_index
	}, ; 345
	%struct.TypeMapModuleEntry {
		i32 u0x02000346, ; uint32_t type_token_id
		i32 471; uint32_t java_map_index
	}, ; 346
	%struct.TypeMapModuleEntry {
		i32 u0x02000348, ; uint32_t type_token_id
		i32 589; uint32_t java_map_index
	}, ; 347
	%struct.TypeMapModuleEntry {
		i32 u0x0200034a, ; uint32_t type_token_id
		i32 102; uint32_t java_map_index
	}, ; 348
	%struct.TypeMapModuleEntry {
		i32 u0x0200034b, ; uint32_t type_token_id
		i32 72; uint32_t java_map_index
	}, ; 349
	%struct.TypeMapModuleEntry {
		i32 u0x0200034d, ; uint32_t type_token_id
		i32 704; uint32_t java_map_index
	}, ; 350
	%struct.TypeMapModuleEntry {
		i32 u0x0200034f, ; uint32_t type_token_id
		i32 1146; uint32_t java_map_index
	}, ; 351
	%struct.TypeMapModuleEntry {
		i32 u0x02000350, ; uint32_t type_token_id
		i32 411; uint32_t java_map_index
	}, ; 352
	%struct.TypeMapModuleEntry {
		i32 u0x02000351, ; uint32_t type_token_id
		i32 1131; uint32_t java_map_index
	}, ; 353
	%struct.TypeMapModuleEntry {
		i32 u0x02000352, ; uint32_t type_token_id
		i32 1330; uint32_t java_map_index
	}, ; 354
	%struct.TypeMapModuleEntry {
		i32 u0x02000353, ; uint32_t type_token_id
		i32 528; uint32_t java_map_index
	}, ; 355
	%struct.TypeMapModuleEntry {
		i32 u0x02000356, ; uint32_t type_token_id
		i32 176; uint32_t java_map_index
	}, ; 356
	%struct.TypeMapModuleEntry {
		i32 u0x02000357, ; uint32_t type_token_id
		i32 402; uint32_t java_map_index
	}, ; 357
	%struct.TypeMapModuleEntry {
		i32 u0x02000358, ; uint32_t type_token_id
		i32 317; uint32_t java_map_index
	}, ; 358
	%struct.TypeMapModuleEntry {
		i32 u0x02000359, ; uint32_t type_token_id
		i32 1162; uint32_t java_map_index
	}, ; 359
	%struct.TypeMapModuleEntry {
		i32 u0x0200035d, ; uint32_t type_token_id
		i32 670; uint32_t java_map_index
	}, ; 360
	%struct.TypeMapModuleEntry {
		i32 u0x0200035e, ; uint32_t type_token_id
		i32 709; uint32_t java_map_index
	}, ; 361
	%struct.TypeMapModuleEntry {
		i32 u0x0200035f, ; uint32_t type_token_id
		i32 630; uint32_t java_map_index
	}, ; 362
	%struct.TypeMapModuleEntry {
		i32 u0x02000360, ; uint32_t type_token_id
		i32 256; uint32_t java_map_index
	}, ; 363
	%struct.TypeMapModuleEntry {
		i32 u0x02000362, ; uint32_t type_token_id
		i32 504; uint32_t java_map_index
	}, ; 364
	%struct.TypeMapModuleEntry {
		i32 u0x02000364, ; uint32_t type_token_id
		i32 818; uint32_t java_map_index
	}, ; 365
	%struct.TypeMapModuleEntry {
		i32 u0x02000365, ; uint32_t type_token_id
		i32 1043; uint32_t java_map_index
	}, ; 366
	%struct.TypeMapModuleEntry {
		i32 u0x02000366, ; uint32_t type_token_id
		i32 257; uint32_t java_map_index
	}, ; 367
	%struct.TypeMapModuleEntry {
		i32 u0x02000367, ; uint32_t type_token_id
		i32 95; uint32_t java_map_index
	}, ; 368
	%struct.TypeMapModuleEntry {
		i32 u0x02000369, ; uint32_t type_token_id
		i32 1168; uint32_t java_map_index
	}, ; 369
	%struct.TypeMapModuleEntry {
		i32 u0x0200036c, ; uint32_t type_token_id
		i32 483; uint32_t java_map_index
	}, ; 370
	%struct.TypeMapModuleEntry {
		i32 u0x0200036e, ; uint32_t type_token_id
		i32 60; uint32_t java_map_index
	}, ; 371
	%struct.TypeMapModuleEntry {
		i32 u0x02000370, ; uint32_t type_token_id
		i32 1213; uint32_t java_map_index
	}, ; 372
	%struct.TypeMapModuleEntry {
		i32 u0x02000371, ; uint32_t type_token_id
		i32 273; uint32_t java_map_index
	}, ; 373
	%struct.TypeMapModuleEntry {
		i32 u0x02000374, ; uint32_t type_token_id
		i32 398; uint32_t java_map_index
	}, ; 374
	%struct.TypeMapModuleEntry {
		i32 u0x02000375, ; uint32_t type_token_id
		i32 71; uint32_t java_map_index
	}, ; 375
	%struct.TypeMapModuleEntry {
		i32 u0x02000377, ; uint32_t type_token_id
		i32 801; uint32_t java_map_index
	}, ; 376
	%struct.TypeMapModuleEntry {
		i32 u0x02000378, ; uint32_t type_token_id
		i32 1180; uint32_t java_map_index
	}, ; 377
	%struct.TypeMapModuleEntry {
		i32 u0x0200037a, ; uint32_t type_token_id
		i32 1244; uint32_t java_map_index
	}, ; 378
	%struct.TypeMapModuleEntry {
		i32 u0x0200037d, ; uint32_t type_token_id
		i32 971; uint32_t java_map_index
	}, ; 379
	%struct.TypeMapModuleEntry {
		i32 u0x0200037f, ; uint32_t type_token_id
		i32 44; uint32_t java_map_index
	}, ; 380
	%struct.TypeMapModuleEntry {
		i32 u0x02000380, ; uint32_t type_token_id
		i32 381; uint32_t java_map_index
	}, ; 381
	%struct.TypeMapModuleEntry {
		i32 u0x02000382, ; uint32_t type_token_id
		i32 179; uint32_t java_map_index
	}, ; 382
	%struct.TypeMapModuleEntry {
		i32 u0x02000383, ; uint32_t type_token_id
		i32 251; uint32_t java_map_index
	}, ; 383
	%struct.TypeMapModuleEntry {
		i32 u0x02000384, ; uint32_t type_token_id
		i32 276; uint32_t java_map_index
	}, ; 384
	%struct.TypeMapModuleEntry {
		i32 u0x02000386, ; uint32_t type_token_id
		i32 1273; uint32_t java_map_index
	}, ; 385
	%struct.TypeMapModuleEntry {
		i32 u0x02000388, ; uint32_t type_token_id
		i32 903; uint32_t java_map_index
	}, ; 386
	%struct.TypeMapModuleEntry {
		i32 u0x0200038a, ; uint32_t type_token_id
		i32 960; uint32_t java_map_index
	}, ; 387
	%struct.TypeMapModuleEntry {
		i32 u0x0200038d, ; uint32_t type_token_id
		i32 1241; uint32_t java_map_index
	}, ; 388
	%struct.TypeMapModuleEntry {
		i32 u0x0200038e, ; uint32_t type_token_id
		i32 1254; uint32_t java_map_index
	}, ; 389
	%struct.TypeMapModuleEntry {
		i32 u0x0200038f, ; uint32_t type_token_id
		i32 166; uint32_t java_map_index
	}, ; 390
	%struct.TypeMapModuleEntry {
		i32 u0x02000390, ; uint32_t type_token_id
		i32 990; uint32_t java_map_index
	}, ; 391
	%struct.TypeMapModuleEntry {
		i32 u0x02000392, ; uint32_t type_token_id
		i32 252; uint32_t java_map_index
	}, ; 392
	%struct.TypeMapModuleEntry {
		i32 u0x02000393, ; uint32_t type_token_id
		i32 416; uint32_t java_map_index
	}, ; 393
	%struct.TypeMapModuleEntry {
		i32 u0x02000394, ; uint32_t type_token_id
		i32 31; uint32_t java_map_index
	}, ; 394
	%struct.TypeMapModuleEntry {
		i32 u0x02000396, ; uint32_t type_token_id
		i32 819; uint32_t java_map_index
	}, ; 395
	%struct.TypeMapModuleEntry {
		i32 u0x02000397, ; uint32_t type_token_id
		i32 750; uint32_t java_map_index
	}, ; 396
	%struct.TypeMapModuleEntry {
		i32 u0x0200039a, ; uint32_t type_token_id
		i32 1239; uint32_t java_map_index
	}, ; 397
	%struct.TypeMapModuleEntry {
		i32 u0x0200039c, ; uint32_t type_token_id
		i32 134; uint32_t java_map_index
	}, ; 398
	%struct.TypeMapModuleEntry {
		i32 u0x020003a0, ; uint32_t type_token_id
		i32 837; uint32_t java_map_index
	}, ; 399
	%struct.TypeMapModuleEntry {
		i32 u0x020003a1, ; uint32_t type_token_id
		i32 1379; uint32_t java_map_index
	}, ; 400
	%struct.TypeMapModuleEntry {
		i32 u0x020003a2, ; uint32_t type_token_id
		i32 1100; uint32_t java_map_index
	}, ; 401
	%struct.TypeMapModuleEntry {
		i32 u0x020003a3, ; uint32_t type_token_id
		i32 451; uint32_t java_map_index
	}, ; 402
	%struct.TypeMapModuleEntry {
		i32 u0x020003a9, ; uint32_t type_token_id
		i32 470; uint32_t java_map_index
	}, ; 403
	%struct.TypeMapModuleEntry {
		i32 u0x020003aa, ; uint32_t type_token_id
		i32 382; uint32_t java_map_index
	}, ; 404
	%struct.TypeMapModuleEntry {
		i32 u0x020003ab, ; uint32_t type_token_id
		i32 1132; uint32_t java_map_index
	}, ; 405
	%struct.TypeMapModuleEntry {
		i32 u0x020003ac, ; uint32_t type_token_id
		i32 517; uint32_t java_map_index
	}, ; 406
	%struct.TypeMapModuleEntry {
		i32 u0x020003ad, ; uint32_t type_token_id
		i32 1097; uint32_t java_map_index
	}, ; 407
	%struct.TypeMapModuleEntry {
		i32 u0x020003ae, ; uint32_t type_token_id
		i32 594; uint32_t java_map_index
	}, ; 408
	%struct.TypeMapModuleEntry {
		i32 u0x020003b0, ; uint32_t type_token_id
		i32 540; uint32_t java_map_index
	}, ; 409
	%struct.TypeMapModuleEntry {
		i32 u0x020003b2, ; uint32_t type_token_id
		i32 277; uint32_t java_map_index
	}, ; 410
	%struct.TypeMapModuleEntry {
		i32 u0x020003b4, ; uint32_t type_token_id
		i32 1126; uint32_t java_map_index
	}, ; 411
	%struct.TypeMapModuleEntry {
		i32 u0x020003b5, ; uint32_t type_token_id
		i32 789; uint32_t java_map_index
	}, ; 412
	%struct.TypeMapModuleEntry {
		i32 u0x020003bd, ; uint32_t type_token_id
		i32 419; uint32_t java_map_index
	}, ; 413
	%struct.TypeMapModuleEntry {
		i32 u0x020003be, ; uint32_t type_token_id
		i32 790; uint32_t java_map_index
	}, ; 414
	%struct.TypeMapModuleEntry {
		i32 u0x020003bf, ; uint32_t type_token_id
		i32 361; uint32_t java_map_index
	}, ; 415
	%struct.TypeMapModuleEntry {
		i32 u0x020003c0, ; uint32_t type_token_id
		i32 1089; uint32_t java_map_index
	}, ; 416
	%struct.TypeMapModuleEntry {
		i32 u0x020003c4, ; uint32_t type_token_id
		i32 212; uint32_t java_map_index
	}, ; 417
	%struct.TypeMapModuleEntry {
		i32 u0x020003c5, ; uint32_t type_token_id
		i32 741; uint32_t java_map_index
	}, ; 418
	%struct.TypeMapModuleEntry {
		i32 u0x020003c8, ; uint32_t type_token_id
		i32 576; uint32_t java_map_index
	}, ; 419
	%struct.TypeMapModuleEntry {
		i32 u0x020003c9, ; uint32_t type_token_id
		i32 492; uint32_t java_map_index
	}, ; 420
	%struct.TypeMapModuleEntry {
		i32 u0x020003cb, ; uint32_t type_token_id
		i32 446; uint32_t java_map_index
	}, ; 421
	%struct.TypeMapModuleEntry {
		i32 u0x020003cc, ; uint32_t type_token_id
		i32 919; uint32_t java_map_index
	}, ; 422
	%struct.TypeMapModuleEntry {
		i32 u0x020003d0, ; uint32_t type_token_id
		i32 1121; uint32_t java_map_index
	}, ; 423
	%struct.TypeMapModuleEntry {
		i32 u0x020003d2, ; uint32_t type_token_id
		i32 116; uint32_t java_map_index
	}, ; 424
	%struct.TypeMapModuleEntry {
		i32 u0x020003d4, ; uint32_t type_token_id
		i32 1171; uint32_t java_map_index
	}, ; 425
	%struct.TypeMapModuleEntry {
		i32 u0x020003d5, ; uint32_t type_token_id
		i32 1135; uint32_t java_map_index
	}, ; 426
	%struct.TypeMapModuleEntry {
		i32 u0x020003d6, ; uint32_t type_token_id
		i32 1308; uint32_t java_map_index
	}, ; 427
	%struct.TypeMapModuleEntry {
		i32 u0x020003d7, ; uint32_t type_token_id
		i32 167; uint32_t java_map_index
	}, ; 428
	%struct.TypeMapModuleEntry {
		i32 u0x020003d9, ; uint32_t type_token_id
		i32 227; uint32_t java_map_index
	}, ; 429
	%struct.TypeMapModuleEntry {
		i32 u0x020003db, ; uint32_t type_token_id
		i32 367; uint32_t java_map_index
	}, ; 430
	%struct.TypeMapModuleEntry {
		i32 u0x020003dd, ; uint32_t type_token_id
		i32 932; uint32_t java_map_index
	}, ; 431
	%struct.TypeMapModuleEntry {
		i32 u0x020003df, ; uint32_t type_token_id
		i32 33; uint32_t java_map_index
	}, ; 432
	%struct.TypeMapModuleEntry {
		i32 u0x020003e0, ; uint32_t type_token_id
		i32 335; uint32_t java_map_index
	}, ; 433
	%struct.TypeMapModuleEntry {
		i32 u0x020003e1, ; uint32_t type_token_id
		i32 865; uint32_t java_map_index
	}, ; 434
	%struct.TypeMapModuleEntry {
		i32 u0x020003e2, ; uint32_t type_token_id
		i32 90; uint32_t java_map_index
	}, ; 435
	%struct.TypeMapModuleEntry {
		i32 u0x020003e3, ; uint32_t type_token_id
		i32 822; uint32_t java_map_index
	}, ; 436
	%struct.TypeMapModuleEntry {
		i32 u0x020003e4, ; uint32_t type_token_id
		i32 910; uint32_t java_map_index
	}, ; 437
	%struct.TypeMapModuleEntry {
		i32 u0x020003e6, ; uint32_t type_token_id
		i32 851; uint32_t java_map_index
	}, ; 438
	%struct.TypeMapModuleEntry {
		i32 u0x020003e7, ; uint32_t type_token_id
		i32 548; uint32_t java_map_index
	}, ; 439
	%struct.TypeMapModuleEntry {
		i32 u0x020003e8, ; uint32_t type_token_id
		i32 1315; uint32_t java_map_index
	}, ; 440
	%struct.TypeMapModuleEntry {
		i32 u0x020003e9, ; uint32_t type_token_id
		i32 682; uint32_t java_map_index
	}, ; 441
	%struct.TypeMapModuleEntry {
		i32 u0x020003ea, ; uint32_t type_token_id
		i32 333; uint32_t java_map_index
	}, ; 442
	%struct.TypeMapModuleEntry {
		i32 u0x020003ec, ; uint32_t type_token_id
		i32 1114; uint32_t java_map_index
	}, ; 443
	%struct.TypeMapModuleEntry {
		i32 u0x020003ed, ; uint32_t type_token_id
		i32 680; uint32_t java_map_index
	}, ; 444
	%struct.TypeMapModuleEntry {
		i32 u0x020003ef, ; uint32_t type_token_id
		i32 265; uint32_t java_map_index
	}, ; 445
	%struct.TypeMapModuleEntry {
		i32 u0x020003f1, ; uint32_t type_token_id
		i32 1380; uint32_t java_map_index
	}, ; 446
	%struct.TypeMapModuleEntry {
		i32 u0x020003f3, ; uint32_t type_token_id
		i32 588; uint32_t java_map_index
	}, ; 447
	%struct.TypeMapModuleEntry {
		i32 u0x020003f4, ; uint32_t type_token_id
		i32 1211; uint32_t java_map_index
	}, ; 448
	%struct.TypeMapModuleEntry {
		i32 u0x020003f5, ; uint32_t type_token_id
		i32 1228; uint32_t java_map_index
	}, ; 449
	%struct.TypeMapModuleEntry {
		i32 u0x020003f6, ; uint32_t type_token_id
		i32 1341; uint32_t java_map_index
	}, ; 450
	%struct.TypeMapModuleEntry {
		i32 u0x020003f8, ; uint32_t type_token_id
		i32 100; uint32_t java_map_index
	}, ; 451
	%struct.TypeMapModuleEntry {
		i32 u0x020003fa, ; uint32_t type_token_id
		i32 656; uint32_t java_map_index
	}, ; 452
	%struct.TypeMapModuleEntry {
		i32 u0x020003fb, ; uint32_t type_token_id
		i32 96; uint32_t java_map_index
	}, ; 453
	%struct.TypeMapModuleEntry {
		i32 u0x020003fd, ; uint32_t type_token_id
		i32 943; uint32_t java_map_index
	}, ; 454
	%struct.TypeMapModuleEntry {
		i32 u0x020003fe, ; uint32_t type_token_id
		i32 1271; uint32_t java_map_index
	}, ; 455
	%struct.TypeMapModuleEntry {
		i32 u0x02000400, ; uint32_t type_token_id
		i32 1205; uint32_t java_map_index
	}, ; 456
	%struct.TypeMapModuleEntry {
		i32 u0x02000402, ; uint32_t type_token_id
		i32 1274; uint32_t java_map_index
	}, ; 457
	%struct.TypeMapModuleEntry {
		i32 u0x02000404, ; uint32_t type_token_id
		i32 825; uint32_t java_map_index
	}, ; 458
	%struct.TypeMapModuleEntry {
		i32 u0x02000405, ; uint32_t type_token_id
		i32 828; uint32_t java_map_index
	}, ; 459
	%struct.TypeMapModuleEntry {
		i32 u0x02000406, ; uint32_t type_token_id
		i32 1283; uint32_t java_map_index
	}, ; 460
	%struct.TypeMapModuleEntry {
		i32 u0x02000407, ; uint32_t type_token_id
		i32 856; uint32_t java_map_index
	}, ; 461
	%struct.TypeMapModuleEntry {
		i32 u0x02000408, ; uint32_t type_token_id
		i32 1291; uint32_t java_map_index
	}, ; 462
	%struct.TypeMapModuleEntry {
		i32 u0x0200040a, ; uint32_t type_token_id
		i32 728; uint32_t java_map_index
	}, ; 463
	%struct.TypeMapModuleEntry {
		i32 u0x0200040c, ; uint32_t type_token_id
		i32 163; uint32_t java_map_index
	}, ; 464
	%struct.TypeMapModuleEntry {
		i32 u0x0200040d, ; uint32_t type_token_id
		i32 524; uint32_t java_map_index
	}, ; 465
	%struct.TypeMapModuleEntry {
		i32 u0x0200040e, ; uint32_t type_token_id
		i32 499; uint32_t java_map_index
	}, ; 466
	%struct.TypeMapModuleEntry {
		i32 u0x02000410, ; uint32_t type_token_id
		i32 902; uint32_t java_map_index
	}, ; 467
	%struct.TypeMapModuleEntry {
		i32 u0x02000412, ; uint32_t type_token_id
		i32 1286; uint32_t java_map_index
	}, ; 468
	%struct.TypeMapModuleEntry {
		i32 u0x02000413, ; uint32_t type_token_id
		i32 122; uint32_t java_map_index
	}, ; 469
	%struct.TypeMapModuleEntry {
		i32 u0x02000414, ; uint32_t type_token_id
		i32 1143; uint32_t java_map_index
	}, ; 470
	%struct.TypeMapModuleEntry {
		i32 u0x02000416, ; uint32_t type_token_id
		i32 360; uint32_t java_map_index
	}, ; 471
	%struct.TypeMapModuleEntry {
		i32 u0x02000418, ; uint32_t type_token_id
		i32 125; uint32_t java_map_index
	}, ; 472
	%struct.TypeMapModuleEntry {
		i32 u0x0200041b, ; uint32_t type_token_id
		i32 497; uint32_t java_map_index
	}, ; 473
	%struct.TypeMapModuleEntry {
		i32 u0x0200041d, ; uint32_t type_token_id
		i32 1278; uint32_t java_map_index
	}, ; 474
	%struct.TypeMapModuleEntry {
		i32 u0x0200041f, ; uint32_t type_token_id
		i32 592; uint32_t java_map_index
	}, ; 475
	%struct.TypeMapModuleEntry {
		i32 u0x02000422, ; uint32_t type_token_id
		i32 9; uint32_t java_map_index
	}, ; 476
	%struct.TypeMapModuleEntry {
		i32 u0x02000424, ; uint32_t type_token_id
		i32 607; uint32_t java_map_index
	}, ; 477
	%struct.TypeMapModuleEntry {
		i32 u0x02000426, ; uint32_t type_token_id
		i32 1073; uint32_t java_map_index
	}, ; 478
	%struct.TypeMapModuleEntry {
		i32 u0x02000428, ; uint32_t type_token_id
		i32 677; uint32_t java_map_index
	}, ; 479
	%struct.TypeMapModuleEntry {
		i32 u0x02000429, ; uint32_t type_token_id
		i32 40; uint32_t java_map_index
	}, ; 480
	%struct.TypeMapModuleEntry {
		i32 u0x0200042b, ; uint32_t type_token_id
		i32 1194; uint32_t java_map_index
	}, ; 481
	%struct.TypeMapModuleEntry {
		i32 u0x0200042d, ; uint32_t type_token_id
		i32 748; uint32_t java_map_index
	}, ; 482
	%struct.TypeMapModuleEntry {
		i32 u0x0200042f, ; uint32_t type_token_id
		i32 1218; uint32_t java_map_index
	}, ; 483
	%struct.TypeMapModuleEntry {
		i32 u0x02000431, ; uint32_t type_token_id
		i32 48; uint32_t java_map_index
	}, ; 484
	%struct.TypeMapModuleEntry {
		i32 u0x02000433, ; uint32_t type_token_id
		i32 844; uint32_t java_map_index
	}, ; 485
	%struct.TypeMapModuleEntry {
		i32 u0x02000435, ; uint32_t type_token_id
		i32 788; uint32_t java_map_index
	}, ; 486
	%struct.TypeMapModuleEntry {
		i32 u0x02000437, ; uint32_t type_token_id
		i32 174; uint32_t java_map_index
	}, ; 487
	%struct.TypeMapModuleEntry {
		i32 u0x02000439, ; uint32_t type_token_id
		i32 1335; uint32_t java_map_index
	}, ; 488
	%struct.TypeMapModuleEntry {
		i32 u0x0200043b, ; uint32_t type_token_id
		i32 1153; uint32_t java_map_index
	}, ; 489
	%struct.TypeMapModuleEntry {
		i32 u0x0200043d, ; uint32_t type_token_id
		i32 1217; uint32_t java_map_index
	}, ; 490
	%struct.TypeMapModuleEntry {
		i32 u0x0200043f, ; uint32_t type_token_id
		i32 332; uint32_t java_map_index
	}, ; 491
	%struct.TypeMapModuleEntry {
		i32 u0x02000440, ; uint32_t type_token_id
		i32 1086; uint32_t java_map_index
	}, ; 492
	%struct.TypeMapModuleEntry {
		i32 u0x02000442, ; uint32_t type_token_id
		i32 535; uint32_t java_map_index
	}, ; 493
	%struct.TypeMapModuleEntry {
		i32 u0x02000443, ; uint32_t type_token_id
		i32 968; uint32_t java_map_index
	}, ; 494
	%struct.TypeMapModuleEntry {
		i32 u0x02000444, ; uint32_t type_token_id
		i32 258; uint32_t java_map_index
	}, ; 495
	%struct.TypeMapModuleEntry {
		i32 u0x02000445, ; uint32_t type_token_id
		i32 10; uint32_t java_map_index
	}, ; 496
	%struct.TypeMapModuleEntry {
		i32 u0x02000446, ; uint32_t type_token_id
		i32 738; uint32_t java_map_index
	}, ; 497
	%struct.TypeMapModuleEntry {
		i32 u0x02000447, ; uint32_t type_token_id
		i32 404; uint32_t java_map_index
	}, ; 498
	%struct.TypeMapModuleEntry {
		i32 u0x02000448, ; uint32_t type_token_id
		i32 1035; uint32_t java_map_index
	}, ; 499
	%struct.TypeMapModuleEntry {
		i32 u0x02000449, ; uint32_t type_token_id
		i32 1119; uint32_t java_map_index
	}, ; 500
	%struct.TypeMapModuleEntry {
		i32 u0x0200044a, ; uint32_t type_token_id
		i32 950; uint32_t java_map_index
	}, ; 501
	%struct.TypeMapModuleEntry {
		i32 u0x0200044b, ; uint32_t type_token_id
		i32 811; uint32_t java_map_index
	}, ; 502
	%struct.TypeMapModuleEntry {
		i32 u0x0200044c, ; uint32_t type_token_id
		i32 708; uint32_t java_map_index
	}, ; 503
	%struct.TypeMapModuleEntry {
		i32 u0x0200044d, ; uint32_t type_token_id
		i32 947; uint32_t java_map_index
	}, ; 504
	%struct.TypeMapModuleEntry {
		i32 u0x0200044e, ; uint32_t type_token_id
		i32 1263; uint32_t java_map_index
	}, ; 505
	%struct.TypeMapModuleEntry {
		i32 u0x0200044f, ; uint32_t type_token_id
		i32 1027; uint32_t java_map_index
	}, ; 506
	%struct.TypeMapModuleEntry {
		i32 u0x02000450, ; uint32_t type_token_id
		i32 1348; uint32_t java_map_index
	}, ; 507
	%struct.TypeMapModuleEntry {
		i32 u0x02000451, ; uint32_t type_token_id
		i32 725; uint32_t java_map_index
	}, ; 508
	%struct.TypeMapModuleEntry {
		i32 u0x02000452, ; uint32_t type_token_id
		i32 484; uint32_t java_map_index
	}, ; 509
	%struct.TypeMapModuleEntry {
		i32 u0x02000453, ; uint32_t type_token_id
		i32 924; uint32_t java_map_index
	}, ; 510
	%struct.TypeMapModuleEntry {
		i32 u0x02000455, ; uint32_t type_token_id
		i32 783; uint32_t java_map_index
	}, ; 511
	%struct.TypeMapModuleEntry {
		i32 u0x02000456, ; uint32_t type_token_id
		i32 1049; uint32_t java_map_index
	}, ; 512
	%struct.TypeMapModuleEntry {
		i32 u0x02000457, ; uint32_t type_token_id
		i32 780; uint32_t java_map_index
	}, ; 513
	%struct.TypeMapModuleEntry {
		i32 u0x02000458, ; uint32_t type_token_id
		i32 406; uint32_t java_map_index
	}, ; 514
	%struct.TypeMapModuleEntry {
		i32 u0x02000459, ; uint32_t type_token_id
		i32 280; uint32_t java_map_index
	}, ; 515
	%struct.TypeMapModuleEntry {
		i32 u0x0200045b, ; uint32_t type_token_id
		i32 1055; uint32_t java_map_index
	}, ; 516
	%struct.TypeMapModuleEntry {
		i32 u0x0200045d, ; uint32_t type_token_id
		i32 180; uint32_t java_map_index
	}, ; 517
	%struct.TypeMapModuleEntry {
		i32 u0x0200045e, ; uint32_t type_token_id
		i32 605; uint32_t java_map_index
	}, ; 518
	%struct.TypeMapModuleEntry {
		i32 u0x02000460, ; uint32_t type_token_id
		i32 1066; uint32_t java_map_index
	}, ; 519
	%struct.TypeMapModuleEntry {
		i32 u0x02000464, ; uint32_t type_token_id
		i32 521; uint32_t java_map_index
	}, ; 520
	%struct.TypeMapModuleEntry {
		i32 u0x02000466, ; uint32_t type_token_id
		i32 930; uint32_t java_map_index
	}, ; 521
	%struct.TypeMapModuleEntry {
		i32 u0x02000467, ; uint32_t type_token_id
		i32 275; uint32_t java_map_index
	}, ; 522
	%struct.TypeMapModuleEntry {
		i32 u0x02000468, ; uint32_t type_token_id
		i32 1297; uint32_t java_map_index
	}, ; 523
	%struct.TypeMapModuleEntry {
		i32 u0x02000469, ; uint32_t type_token_id
		i32 1366; uint32_t java_map_index
	}, ; 524
	%struct.TypeMapModuleEntry {
		i32 u0x0200046b, ; uint32_t type_token_id
		i32 24; uint32_t java_map_index
	}, ; 525
	%struct.TypeMapModuleEntry {
		i32 u0x0200046c, ; uint32_t type_token_id
		i32 431; uint32_t java_map_index
	}, ; 526
	%struct.TypeMapModuleEntry {
		i32 u0x0200046d, ; uint32_t type_token_id
		i32 1195; uint32_t java_map_index
	}, ; 527
	%struct.TypeMapModuleEntry {
		i32 u0x0200046e, ; uint32_t type_token_id
		i32 861; uint32_t java_map_index
	}, ; 528
	%struct.TypeMapModuleEntry {
		i32 u0x0200046f, ; uint32_t type_token_id
		i32 426; uint32_t java_map_index
	}, ; 529
	%struct.TypeMapModuleEntry {
		i32 u0x02000471, ; uint32_t type_token_id
		i32 800; uint32_t java_map_index
	}, ; 530
	%struct.TypeMapModuleEntry {
		i32 u0x02000472, ; uint32_t type_token_id
		i32 242; uint32_t java_map_index
	}, ; 531
	%struct.TypeMapModuleEntry {
		i32 u0x02000473, ; uint32_t type_token_id
		i32 570; uint32_t java_map_index
	}, ; 532
	%struct.TypeMapModuleEntry {
		i32 u0x02000474, ; uint32_t type_token_id
		i32 1177; uint32_t java_map_index
	}, ; 533
	%struct.TypeMapModuleEntry {
		i32 u0x02000475, ; uint32_t type_token_id
		i32 512; uint32_t java_map_index
	}, ; 534
	%struct.TypeMapModuleEntry {
		i32 u0x02000476, ; uint32_t type_token_id
		i32 717; uint32_t java_map_index
	}, ; 535
	%struct.TypeMapModuleEntry {
		i32 u0x02000478, ; uint32_t type_token_id
		i32 958; uint32_t java_map_index
	}, ; 536
	%struct.TypeMapModuleEntry {
		i32 u0x02000479, ; uint32_t type_token_id
		i32 1299; uint32_t java_map_index
	}, ; 537
	%struct.TypeMapModuleEntry {
		i32 u0x0200048a, ; uint32_t type_token_id
		i32 616; uint32_t java_map_index
	} ; 538
], align 16

@module40_managed_to_java_duplicates = internal dso_local constant [208 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x020000b9, ; uint32_t type_token_id
		i32 973; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x020000be, ; uint32_t type_token_id
		i32 1357; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 219; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 178; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x020000c5, ; uint32_t type_token_id
		i32 410; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x020000c7, ; uint32_t type_token_id
		i32 1277; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x020000c9, ; uint32_t type_token_id
		i32 737; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x020000cb, ; uint32_t type_token_id
		i32 892; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x020000cd, ; uint32_t type_token_id
		i32 1181; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x020000cf, ; uint32_t type_token_id
		i32 1007; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x020000d1, ; uint32_t type_token_id
		i32 740; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x020000d5, ; uint32_t type_token_id
		i32 136; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x020000d7, ; uint32_t type_token_id
		i32 920; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x020000da, ; uint32_t type_token_id
		i32 1053; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x020000de, ; uint32_t type_token_id
		i32 980; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x020000e0, ; uint32_t type_token_id
		i32 1210; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x020000e4, ; uint32_t type_token_id
		i32 204; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x020000e6, ; uint32_t type_token_id
		i32 638; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x020000e8, ; uint32_t type_token_id
		i32 429; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x020000ed, ; uint32_t type_token_id
		i32 1196; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x020000f0, ; uint32_t type_token_id
		i32 420; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x020000f2, ; uint32_t type_token_id
		i32 401; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x020000f5, ; uint32_t type_token_id
		i32 1018; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x020000f8, ; uint32_t type_token_id
		i32 1124; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000106, ; uint32_t type_token_id
		i32 238; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000108, ; uint32_t type_token_id
		i32 340; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x0200010b, ; uint32_t type_token_id
		i32 1062; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x0200010e, ; uint32_t type_token_id
		i32 0; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x0200010f, ; uint32_t type_token_id
		i32 982; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000112, ; uint32_t type_token_id
		i32 1371; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000116, ; uint32_t type_token_id
		i32 1232; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x02000118, ; uint32_t type_token_id
		i32 628; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000119, ; uint32_t type_token_id
		i32 226; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x02000123, ; uint32_t type_token_id
		i32 1381; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x0200012b, ; uint32_t type_token_id
		i32 233; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x0200012c, ; uint32_t type_token_id
		i32 226; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x0200012d, ; uint32_t type_token_id
		i32 519; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x0200012e, ; uint32_t type_token_id
		i32 519; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x02000134, ; uint32_t type_token_id
		i32 1385; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x0200013a, ; uint32_t type_token_id
		i32 1068; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x0200013f, ; uint32_t type_token_id
		i32 786; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x02000144, ; uint32_t type_token_id
		i32 53; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x02000146, ; uint32_t type_token_id
		i32 1207; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x02000148, ; uint32_t type_token_id
		i32 805; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x0200014a, ; uint32_t type_token_id
		i32 82; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x0200014f, ; uint32_t type_token_id
		i32 847; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x02000151, ; uint32_t type_token_id
		i32 1033; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x0200015d, ; uint32_t type_token_id
		i32 636; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x02000165, ; uint32_t type_token_id
		i32 160; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x02000171, ; uint32_t type_token_id
		i32 1303; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x02000174, ; uint32_t type_token_id
		i32 845; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x02000178, ; uint32_t type_token_id
		i32 65; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x0200017a, ; uint32_t type_token_id
		i32 1226; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x0200017d, ; uint32_t type_token_id
		i32 840; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x02000180, ; uint32_t type_token_id
		i32 765; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x02000183, ; uint32_t type_token_id
		i32 405; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x02000185, ; uint32_t type_token_id
		i32 914; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x02000189, ; uint32_t type_token_id
		i32 668; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x0200018f, ; uint32_t type_token_id
		i32 78; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x02000199, ; uint32_t type_token_id
		i32 20; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x0200019b, ; uint32_t type_token_id
		i32 699; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x0200019e, ; uint32_t type_token_id
		i32 713; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020001a0, ; uint32_t type_token_id
		i32 815; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020001a2, ; uint32_t type_token_id
		i32 237; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020001a4, ; uint32_t type_token_id
		i32 108; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020001ac, ; uint32_t type_token_id
		i32 1220; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020001af, ; uint32_t type_token_id
		i32 286; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020001b1, ; uint32_t type_token_id
		i32 261; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x020001b3, ; uint32_t type_token_id
		i32 153; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x020001b5, ; uint32_t type_token_id
		i32 322; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x020001c5, ; uint32_t type_token_id
		i32 1367; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x020001c8, ; uint32_t type_token_id
		i32 415; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x020001c9, ; uint32_t type_token_id
		i32 390; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x020001cb, ; uint32_t type_token_id
		i32 168; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x020001cd, ; uint32_t type_token_id
		i32 827; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x020001cf, ; uint32_t type_token_id
		i32 1199; uint32_t java_map_index
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 u0x020001d9, ; uint32_t type_token_id
		i32 222; uint32_t java_map_index
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 u0x020001da, ; uint32_t type_token_id
		i32 863; uint32_t java_map_index
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 u0x020001dc, ; uint32_t type_token_id
		i32 1101; uint32_t java_map_index
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 u0x020001ea, ; uint32_t type_token_id
		i32 119; uint32_t java_map_index
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 u0x020001ee, ; uint32_t type_token_id
		i32 339; uint32_t java_map_index
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 u0x020001f2, ; uint32_t type_token_id
		i32 162; uint32_t java_map_index
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 u0x020001f6, ; uint32_t type_token_id
		i32 386; uint32_t java_map_index
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 u0x020001f8, ; uint32_t type_token_id
		i32 285; uint32_t java_map_index
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 u0x020001fa, ; uint32_t type_token_id
		i32 875; uint32_t java_map_index
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 u0x02000201, ; uint32_t type_token_id
		i32 888; uint32_t java_map_index
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 u0x02000206, ; uint32_t type_token_id
		i32 1091; uint32_t java_map_index
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 u0x02000209, ; uint32_t type_token_id
		i32 1243; uint32_t java_map_index
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 u0x0200020b, ; uint32_t type_token_id
		i32 25; uint32_t java_map_index
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 u0x0200020f, ; uint32_t type_token_id
		i32 1304; uint32_t java_map_index
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 u0x02000211, ; uint32_t type_token_id
		i32 368; uint32_t java_map_index
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 u0x02000215, ; uint32_t type_token_id
		i32 107; uint32_t java_map_index
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 u0x02000219, ; uint32_t type_token_id
		i32 329; uint32_t java_map_index
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 u0x0200021d, ; uint32_t type_token_id
		i32 1251; uint32_t java_map_index
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 u0x02000236, ; uint32_t type_token_id
		i32 1260; uint32_t java_map_index
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 u0x02000239, ; uint32_t type_token_id
		i32 1234; uint32_t java_map_index
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 u0x0200023c, ; uint32_t type_token_id
		i32 621; uint32_t java_map_index
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 u0x0200023d, ; uint32_t type_token_id
		i32 761; uint32_t java_map_index
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 u0x02000240, ; uint32_t type_token_id
		i32 475; uint32_t java_map_index
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 u0x0200024e, ; uint32_t type_token_id
		i32 1354; uint32_t java_map_index
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 u0x02000250, ; uint32_t type_token_id
		i32 324; uint32_t java_map_index
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 u0x02000253, ; uint32_t type_token_id
		i32 247; uint32_t java_map_index
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 u0x02000255, ; uint32_t type_token_id
		i32 1193; uint32_t java_map_index
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 u0x02000258, ; uint32_t type_token_id
		i32 260; uint32_t java_map_index
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 u0x0200025a, ; uint32_t type_token_id
		i32 331; uint32_t java_map_index
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 u0x0200025c, ; uint32_t type_token_id
		i32 536; uint32_t java_map_index
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 u0x0200025f, ; uint32_t type_token_id
		i32 1104; uint32_t java_map_index
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 u0x02000262, ; uint32_t type_token_id
		i32 181; uint32_t java_map_index
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 u0x02000264, ; uint32_t type_token_id
		i32 1048; uint32_t java_map_index
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 u0x02000266, ; uint32_t type_token_id
		i32 496; uint32_t java_map_index
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 u0x02000268, ; uint32_t type_token_id
		i32 776; uint32_t java_map_index
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 u0x0200026a, ; uint32_t type_token_id
		i32 321; uint32_t java_map_index
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 u0x0200026c, ; uint32_t type_token_id
		i32 1050; uint32_t java_map_index
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 u0x0200026e, ; uint32_t type_token_id
		i32 148; uint32_t java_map_index
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 u0x02000271, ; uint32_t type_token_id
		i32 129; uint32_t java_map_index
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 u0x02000272, ; uint32_t type_token_id
		i32 98; uint32_t java_map_index
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 u0x02000274, ; uint32_t type_token_id
		i32 455; uint32_t java_map_index
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 u0x0200027b, ; uint32_t type_token_id
		i32 281; uint32_t java_map_index
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 u0x02000284, ; uint32_t type_token_id
		i32 42; uint32_t java_map_index
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 u0x02000288, ; uint32_t type_token_id
		i32 618; uint32_t java_map_index
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 u0x02000297, ; uint32_t type_token_id
		i32 691; uint32_t java_map_index
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 u0x0200029e, ; uint32_t type_token_id
		i32 325; uint32_t java_map_index
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 u0x020002a2, ; uint32_t type_token_id
		i32 1203; uint32_t java_map_index
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 u0x020002a3, ; uint32_t type_token_id
		i32 997; uint32_t java_map_index
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 u0x020002a9, ; uint32_t type_token_id
		i32 315; uint32_t java_map_index
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 u0x020002ad, ; uint32_t type_token_id
		i32 289; uint32_t java_map_index
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 u0x020002b5, ; uint32_t type_token_id
		i32 132; uint32_t java_map_index
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 u0x020002b9, ; uint32_t type_token_id
		i32 351; uint32_t java_map_index
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 u0x020002bc, ; uint32_t type_token_id
		i32 953; uint32_t java_map_index
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 u0x020002e5, ; uint32_t type_token_id
		i32 1088; uint32_t java_map_index
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 u0x020002eb, ; uint32_t type_token_id
		i32 67; uint32_t java_map_index
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 u0x020002f0, ; uint32_t type_token_id
		i32 662; uint32_t java_map_index
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 u0x020002f4, ; uint32_t type_token_id
		i32 1359; uint32_t java_map_index
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 u0x0200030c, ; uint32_t type_token_id
		i32 403; uint32_t java_map_index
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 u0x02000341, ; uint32_t type_token_id
		i32 84; uint32_t java_map_index
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 u0x02000347, ; uint32_t type_token_id
		i32 625; uint32_t java_map_index
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 u0x02000349, ; uint32_t type_token_id
		i32 589; uint32_t java_map_index
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 u0x0200034e, ; uint32_t type_token_id
		i32 704; uint32_t java_map_index
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 u0x02000354, ; uint32_t type_token_id
		i32 528; uint32_t java_map_index
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 u0x0200035a, ; uint32_t type_token_id
		i32 1162; uint32_t java_map_index
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 u0x02000363, ; uint32_t type_token_id
		i32 504; uint32_t java_map_index
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 u0x02000368, ; uint32_t type_token_id
		i32 670; uint32_t java_map_index
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 u0x0200036a, ; uint32_t type_token_id
		i32 1168; uint32_t java_map_index
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 u0x0200036b, ; uint32_t type_token_id
		i32 630; uint32_t java_map_index
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 u0x0200036f, ; uint32_t type_token_id
		i32 60; uint32_t java_map_index
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 u0x02000372, ; uint32_t type_token_id
		i32 273; uint32_t java_map_index
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 u0x02000376, ; uint32_t type_token_id
		i32 71; uint32_t java_map_index
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 u0x02000379, ; uint32_t type_token_id
		i32 1180; uint32_t java_map_index
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 u0x0200037b, ; uint32_t type_token_id
		i32 1244; uint32_t java_map_index
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 u0x0200037e, ; uint32_t type_token_id
		i32 971; uint32_t java_map_index
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 u0x02000381, ; uint32_t type_token_id
		i32 381; uint32_t java_map_index
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 u0x02000385, ; uint32_t type_token_id
		i32 276; uint32_t java_map_index
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 u0x02000387, ; uint32_t type_token_id
		i32 1273; uint32_t java_map_index
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 u0x02000389, ; uint32_t type_token_id
		i32 903; uint32_t java_map_index
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 u0x0200039d, ; uint32_t type_token_id
		i32 819; uint32_t java_map_index
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 u0x020003af, ; uint32_t type_token_id
		i32 594; uint32_t java_map_index
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 u0x020003b3, ; uint32_t type_token_id
		i32 277; uint32_t java_map_index
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 u0x020003c6, ; uint32_t type_token_id
		i32 741; uint32_t java_map_index
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 u0x020003d8, ; uint32_t type_token_id
		i32 167; uint32_t java_map_index
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 u0x020003da, ; uint32_t type_token_id
		i32 227; uint32_t java_map_index
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 u0x020003de, ; uint32_t type_token_id
		i32 932; uint32_t java_map_index
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 u0x020003e5, ; uint32_t type_token_id
		i32 910; uint32_t java_map_index
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 u0x020003eb, ; uint32_t type_token_id
		i32 333; uint32_t java_map_index
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 u0x020003ee, ; uint32_t type_token_id
		i32 680; uint32_t java_map_index
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 u0x020003f0, ; uint32_t type_token_id
		i32 265; uint32_t java_map_index
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 u0x020003f2, ; uint32_t type_token_id
		i32 1380; uint32_t java_map_index
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 u0x020003f7, ; uint32_t type_token_id
		i32 1341; uint32_t java_map_index
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 u0x020003f9, ; uint32_t type_token_id
		i32 100; uint32_t java_map_index
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 u0x020003fc, ; uint32_t type_token_id
		i32 96; uint32_t java_map_index
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 u0x020003ff, ; uint32_t type_token_id
		i32 1271; uint32_t java_map_index
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 u0x02000401, ; uint32_t type_token_id
		i32 1205; uint32_t java_map_index
	}, ; 170
	%struct.TypeMapModuleEntry {
		i32 u0x02000403, ; uint32_t type_token_id
		i32 1274; uint32_t java_map_index
	}, ; 171
	%struct.TypeMapModuleEntry {
		i32 u0x02000409, ; uint32_t type_token_id
		i32 1291; uint32_t java_map_index
	}, ; 172
	%struct.TypeMapModuleEntry {
		i32 u0x0200040b, ; uint32_t type_token_id
		i32 728; uint32_t java_map_index
	}, ; 173
	%struct.TypeMapModuleEntry {
		i32 u0x0200040f, ; uint32_t type_token_id
		i32 499; uint32_t java_map_index
	}, ; 174
	%struct.TypeMapModuleEntry {
		i32 u0x02000411, ; uint32_t type_token_id
		i32 902; uint32_t java_map_index
	}, ; 175
	%struct.TypeMapModuleEntry {
		i32 u0x02000415, ; uint32_t type_token_id
		i32 1143; uint32_t java_map_index
	}, ; 176
	%struct.TypeMapModuleEntry {
		i32 u0x02000417, ; uint32_t type_token_id
		i32 360; uint32_t java_map_index
	}, ; 177
	%struct.TypeMapModuleEntry {
		i32 u0x02000419, ; uint32_t type_token_id
		i32 1088; uint32_t java_map_index
	}, ; 178
	%struct.TypeMapModuleEntry {
		i32 u0x0200041a, ; uint32_t type_token_id
		i32 1088; uint32_t java_map_index
	}, ; 179
	%struct.TypeMapModuleEntry {
		i32 u0x0200041c, ; uint32_t type_token_id
		i32 497; uint32_t java_map_index
	}, ; 180
	%struct.TypeMapModuleEntry {
		i32 u0x0200041e, ; uint32_t type_token_id
		i32 1278; uint32_t java_map_index
	}, ; 181
	%struct.TypeMapModuleEntry {
		i32 u0x02000420, ; uint32_t type_token_id
		i32 592; uint32_t java_map_index
	}, ; 182
	%struct.TypeMapModuleEntry {
		i32 u0x02000421, ; uint32_t type_token_id
		i32 125; uint32_t java_map_index
	}, ; 183
	%struct.TypeMapModuleEntry {
		i32 u0x02000423, ; uint32_t type_token_id
		i32 9; uint32_t java_map_index
	}, ; 184
	%struct.TypeMapModuleEntry {
		i32 u0x02000425, ; uint32_t type_token_id
		i32 607; uint32_t java_map_index
	}, ; 185
	%struct.TypeMapModuleEntry {
		i32 u0x02000427, ; uint32_t type_token_id
		i32 1073; uint32_t java_map_index
	}, ; 186
	%struct.TypeMapModuleEntry {
		i32 u0x0200042c, ; uint32_t type_token_id
		i32 1194; uint32_t java_map_index
	}, ; 187
	%struct.TypeMapModuleEntry {
		i32 u0x0200042e, ; uint32_t type_token_id
		i32 748; uint32_t java_map_index
	}, ; 188
	%struct.TypeMapModuleEntry {
		i32 u0x02000430, ; uint32_t type_token_id
		i32 1218; uint32_t java_map_index
	}, ; 189
	%struct.TypeMapModuleEntry {
		i32 u0x02000432, ; uint32_t type_token_id
		i32 48; uint32_t java_map_index
	}, ; 190
	%struct.TypeMapModuleEntry {
		i32 u0x02000434, ; uint32_t type_token_id
		i32 844; uint32_t java_map_index
	}, ; 191
	%struct.TypeMapModuleEntry {
		i32 u0x02000436, ; uint32_t type_token_id
		i32 788; uint32_t java_map_index
	}, ; 192
	%struct.TypeMapModuleEntry {
		i32 u0x02000438, ; uint32_t type_token_id
		i32 174; uint32_t java_map_index
	}, ; 193
	%struct.TypeMapModuleEntry {
		i32 u0x0200043a, ; uint32_t type_token_id
		i32 1335; uint32_t java_map_index
	}, ; 194
	%struct.TypeMapModuleEntry {
		i32 u0x0200043c, ; uint32_t type_token_id
		i32 1153; uint32_t java_map_index
	}, ; 195
	%struct.TypeMapModuleEntry {
		i32 u0x0200043e, ; uint32_t type_token_id
		i32 1217; uint32_t java_map_index
	}, ; 196
	%struct.TypeMapModuleEntry {
		i32 u0x02000441, ; uint32_t type_token_id
		i32 332; uint32_t java_map_index
	}, ; 197
	%struct.TypeMapModuleEntry {
		i32 u0x0200045a, ; uint32_t type_token_id
		i32 280; uint32_t java_map_index
	}, ; 198
	%struct.TypeMapModuleEntry {
		i32 u0x0200045c, ; uint32_t type_token_id
		i32 1055; uint32_t java_map_index
	}, ; 199
	%struct.TypeMapModuleEntry {
		i32 u0x0200045f, ; uint32_t type_token_id
		i32 605; uint32_t java_map_index
	}, ; 200
	%struct.TypeMapModuleEntry {
		i32 u0x02000461, ; uint32_t type_token_id
		i32 1066; uint32_t java_map_index
	}, ; 201
	%struct.TypeMapModuleEntry {
		i32 u0x02000462, ; uint32_t type_token_id
		i32 708; uint32_t java_map_index
	}, ; 202
	%struct.TypeMapModuleEntry {
		i32 u0x02000465, ; uint32_t type_token_id
		i32 521; uint32_t java_map_index
	}, ; 203
	%struct.TypeMapModuleEntry {
		i32 u0x0200046a, ; uint32_t type_token_id
		i32 1366; uint32_t java_map_index
	}, ; 204
	%struct.TypeMapModuleEntry {
		i32 u0x02000470, ; uint32_t type_token_id
		i32 426; uint32_t java_map_index
	}, ; 205
	%struct.TypeMapModuleEntry {
		i32 u0x02000477, ; uint32_t type_token_id
		i32 717; uint32_t java_map_index
	}, ; 206
	%struct.TypeMapModuleEntry {
		i32 u0x0200047a, ; uint32_t type_token_id
		i32 1299; uint32_t java_map_index
	} ; 207
], align 16

@module41_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 972; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 479; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 981; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 1144; uint32_t java_map_index
	} ; 3
], align 16

@module41_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 479; uint32_t java_map_index
	} ; 0
], align 4

@module42_managed_to_java = internal dso_local constant [90 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 1128; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 887; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 744; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 759; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 263; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 287; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 105; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1169; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 448; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 1382; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 596; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000052, ; uint32_t type_token_id
		i32 334; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000053, ; uint32_t type_token_id
		i32 770; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 183; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 729; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000056, ; uint32_t type_token_id
		i32 1289; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000057, ; uint32_t type_token_id
		i32 1312; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000059, ; uint32_t type_token_id
		i32 128; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 686; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 365; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 1355; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 133; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 561; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000060, ; uint32_t type_token_id
		i32 544; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000061, ; uint32_t type_token_id
		i32 310; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000062, ; uint32_t type_token_id
		i32 779; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000063, ; uint32_t type_token_id
		i32 1185; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000064, ; uint32_t type_token_id
		i32 21; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 1142; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000068, ; uint32_t type_token_id
		i32 389; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000069, ; uint32_t type_token_id
		i32 849; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 777; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 643; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 425; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 1023; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 1370; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000071, ; uint32_t type_token_id
		i32 264; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000074, ; uint32_t type_token_id
		i32 806; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 293; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000079, ; uint32_t type_token_id
		i32 399; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 808; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 1344; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 511; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 955; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x02000080, ; uint32_t type_token_id
		i32 578; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x02000083, ; uint32_t type_token_id
		i32 715; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 697; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x0200008b, ; uint32_t type_token_id
		i32 88; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x0200008c, ; uint32_t type_token_id
		i32 518; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 602; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 768; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x02000091, ; uint32_t type_token_id
		i32 1356; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x02000093, ; uint32_t type_token_id
		i32 603; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x02000095, ; uint32_t type_token_id
		i32 373; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x02000097, ; uint32_t type_token_id
		i32 1349; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x02000099, ; uint32_t type_token_id
		i32 43; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 1325; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x0200009c, ; uint32_t type_token_id
		i32 450; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 617; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 983; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 868; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x020000a1, ; uint32_t type_token_id
		i32 473; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020000a3, ; uint32_t type_token_id
		i32 1306; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020000a4, ; uint32_t type_token_id
		i32 857; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020000a5, ; uint32_t type_token_id
		i32 501; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020000a6, ; uint32_t type_token_id
		i32 1248; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020000a7, ; uint32_t type_token_id
		i32 660; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020000a8, ; uint32_t type_token_id
		i32 632; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x020000a9, ; uint32_t type_token_id
		i32 1326; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x020000ab, ; uint32_t type_token_id
		i32 564; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x020000ac, ; uint32_t type_token_id
		i32 170; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 597; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x020000ae, ; uint32_t type_token_id
		i32 190; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x020000af, ; uint32_t type_token_id
		i32 269; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x020000b0, ; uint32_t type_token_id
		i32 684; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 165; uint32_t java_map_index
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 u0x020000b7, ; uint32_t type_token_id
		i32 703; uint32_t java_map_index
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 3; uint32_t java_map_index
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 u0x020000b9, ; uint32_t type_token_id
		i32 73; uint32_t java_map_index
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 u0x020000ba, ; uint32_t type_token_id
		i32 1346; uint32_t java_map_index
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 u0x020000bb, ; uint32_t type_token_id
		i32 364; uint32_t java_map_index
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 u0x020000bc, ; uint32_t type_token_id
		i32 1021; uint32_t java_map_index
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 u0x020000bd, ; uint32_t type_token_id
		i32 1156; uint32_t java_map_index
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 u0x020000be, ; uint32_t type_token_id
		i32 266; uint32_t java_map_index
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 526; uint32_t java_map_index
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 1039; uint32_t java_map_index
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 1337; uint32_t java_map_index
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 964; uint32_t java_map_index
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 u0x020000c5, ; uint32_t type_token_id
		i32 541; uint32_t java_map_index
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 u0x020000c6, ; uint32_t type_token_id
		i32 942; uint32_t java_map_index
	} ; 89
], align 16

@module42_managed_to_java_duplicates = internal dso_local constant [26 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 1128; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 887; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 263; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000058, ; uint32_t type_token_id
		i32 1312; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 1355; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000065, ; uint32_t type_token_id
		i32 21; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000067, ; uint32_t type_token_id
		i32 1142; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 425; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 643; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000072, ; uint32_t type_token_id
		i32 264; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 511; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000081, ; uint32_t type_token_id
		i32 578; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000089, ; uint32_t type_token_id
		i32 1344; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 602; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000090, ; uint32_t type_token_id
		i32 768; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000092, ; uint32_t type_token_id
		i32 1356; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000094, ; uint32_t type_token_id
		i32 603; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000096, ; uint32_t type_token_id
		i32 373; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000098, ; uint32_t type_token_id
		i32 1349; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 43; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 450; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 473; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x020000aa, ; uint32_t type_token_id
		i32 1326; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x020000b1, ; uint32_t type_token_id
		i32 684; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 1337; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x020000c4, ; uint32_t type_token_id
		i32 964; uint32_t java_map_index
	} ; 25
], align 16

@module43_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 393; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 1267; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 121; uint32_t java_map_index
	} ; 2
], align 16

; Java to managed map
@map_java = dso_local local_unnamed_addr constant [1386 x %struct.TypeMapJava] [
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 54; uint32_t java_name_index
	}, ; 0
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 619; uint32_t java_name_index
	}, ; 1
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000a1, ; uint32_t type_token_id
		i32 633; uint32_t java_name_index
	}, ; 2
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 1370; uint32_t java_name_index
	}, ; 3
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 540; uint32_t java_name_index
	}, ; 4
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000d2, ; uint32_t type_token_id
		i32 16; uint32_t java_name_index
	}, ; 5
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200011a, ; uint32_t type_token_id
		i32 60; uint32_t java_name_index
	}, ; 6
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000073, ; uint32_t type_token_id
		i32 614; uint32_t java_name_index
	}, ; 7
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 628; uint32_t java_name_index
	}, ; 8
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 476; uint32_t java_name_index
	}, ; 9
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000445, ; uint32_t type_token_id
		i32 496; uint32_t java_name_index
	}, ; 10
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003b7, ; uint32_t type_token_id
		i32 946; uint32_t java_name_index
	}, ; 11
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000027, ; uint32_t type_token_id
		i32 691; uint32_t java_name_index
	}, ; 12
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000385, ; uint32_t type_token_id
		i32 915; uint32_t java_name_index
	}, ; 13
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000101, ; uint32_t type_token_id
		i32 46; uint32_t java_name_index
	}, ; 14
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000295, ; uint32_t type_token_id
		i32 261; uint32_t java_name_index
	}, ; 15
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x02000018, ; uint32_t type_token_id
		i32 851; uint32_t java_name_index
	}, ; 16
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 803; uint32_t java_name_index
	}, ; 17
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000d3, ; uint32_t type_token_id
		i32 17; uint32_t java_name_index
	}, ; 18
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000b9, ; uint32_t type_token_id
		i32 648; uint32_t java_name_index
	}, ; 19
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000198, ; uint32_t type_token_id
		i32 132; uint32_t java_name_index
	}, ; 20
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1320; uint32_t java_name_index
	}, ; 21
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 1075; uint32_t java_name_index
	}, ; 22
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000054, ; uint32_t type_token_id
		i32 1005; uint32_t java_name_index
	}, ; 23
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200046b, ; uint32_t type_token_id
		i32 525; uint32_t java_name_index
	}, ; 24
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 204; uint32_t java_name_index
	}, ; 25
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000cb, ; uint32_t type_token_id
		i32 1147; uint32_t java_name_index
	}, ; 26
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001ec, ; uint32_t type_token_id
		i32 767; uint32_t java_name_index
	}, ; 27
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index
		i32 u0x02000009, ; uint32_t type_token_id
		i32 819; uint32_t java_name_index
	}, ; 28
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020002d1, ; uint32_t type_token_id
		i32 780; uint32_t java_name_index
	}, ; 29
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 828; uint32_t java_name_index
	}, ; 30
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000394, ; uint32_t type_token_id
		i32 394; uint32_t java_name_index
	}, ; 31
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000020, ; uint32_t type_token_id
		i32 804; uint32_t java_name_index
	}, ; 32
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003df, ; uint32_t type_token_id
		i32 432; uint32_t java_name_index
	}, ; 33
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 690; uint32_t java_name_index
	}, ; 34
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000047, ; uint32_t type_token_id
		i32 995; uint32_t java_name_index
	}, ; 35
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000e7, ; uint32_t type_token_id
		i32 1170; uint32_t java_name_index
	}, ; 36
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000065, ; uint32_t type_token_id
		i32 1198; uint32_t java_name_index
	}, ; 37
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000098, ; uint32_t type_token_id
		i32 1038; uint32_t java_name_index
	}, ; 38
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1081; uint32_t java_name_index
	}, ; 39
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000429, ; uint32_t type_token_id
		i32 480; uint32_t java_name_index
	}, ; 40
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000007, ; uint32_t type_token_id
		i32 654; uint32_t java_name_index
	}, ; 41
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000283, ; uint32_t type_token_id
		i32 252; uint32_t java_name_index
	}, ; 42
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1348; uint32_t java_name_index
	}, ; 43
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200037f, ; uint32_t type_token_id
		i32 380; uint32_t java_name_index
	}, ; 44
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000ab, ; uint32_t type_token_id
		i32 640; uint32_t java_name_index
	}, ; 45
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002b1, ; uint32_t type_token_id
		i32 274; uint32_t java_name_index
	}, ; 46
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000369, ; uint32_t type_token_id
		i32 897; uint32_t java_name_index
	}, ; 47
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 484; uint32_t java_name_index
	}, ; 48
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001f0, ; uint32_t type_token_id
		i32 190; uint32_t java_name_index
	}, ; 49
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001c2, ; uint32_t type_token_id
		i32 162; uint32_t java_name_index
	}, ; 50
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003db, ; uint32_t type_token_id
		i32 971; uint32_t java_name_index
	}, ; 51
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001d7, ; uint32_t type_token_id
		i32 754; uint32_t java_name_index
	}, ; 52
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 81; uint32_t java_name_index
	}, ; 53
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000088, ; uint32_t type_token_id
		i32 1217; uint32_t java_name_index
	}, ; 54
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001f7, ; uint32_t type_token_id
		i32 772; uint32_t java_name_index
	}, ; 55
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001bd, ; uint32_t type_token_id
		i32 158; uint32_t java_name_index
	}, ; 56
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 1142; uint32_t java_name_index
	}, ; 57
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 709; uint32_t java_name_index
	}, ; 58
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000023, ; uint32_t type_token_id
		i32 807; uint32_t java_name_index
	}, ; 59
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 371; uint32_t java_name_index
	}, ; 60
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 1074; uint32_t java_name_index
	}, ; 61
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000140, ; uint32_t type_token_id
		i32 78; uint32_t java_name_index
	}, ; 62
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1060; uint32_t java_name_index
	}, ; 63
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002f1, ; uint32_t type_token_id
		i32 292; uint32_t java_name_index
	}, ; 64
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 114; uint32_t java_name_index
	}, ; 65
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 649; uint32_t java_name_index
	}, ; 66
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002e6, ; uint32_t type_token_id
		i32 290; uint32_t java_name_index
	}, ; 67
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003b6, ; uint32_t type_token_id
		i32 945; uint32_t java_name_index
	}, ; 68
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 635; uint32_t java_name_index
	}, ; 69
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1085; uint32_t java_name_index
	}, ; 70
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 375; uint32_t java_name_index
	}, ; 71
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200034b, ; uint32_t type_token_id
		i32 349; uint32_t java_name_index
	}, ; 72
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000b9, ; uint32_t type_token_id
		i32 1371; uint32_t java_name_index
	}, ; 73
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000339, ; uint32_t type_token_id
		i32 335; uint32_t java_name_index
	}, ; 74
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200032d, ; uint32_t type_token_id
		i32 323; uint32_t java_name_index
	}, ; 75
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000088, ; uint32_t type_token_id
		i32 622; uint32_t java_name_index
	}, ; 76
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000c4, ; uint32_t type_token_id
		i32 652; uint32_t java_name_index
	}, ; 77
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200018e, ; uint32_t type_token_id
		i32 124; uint32_t java_name_index
	}, ; 78
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1101; uint32_t java_name_index
	}, ; 79
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1058; uint32_t java_name_index
	}, ; 80
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 1183; uint32_t java_name_index
	}, ; 81
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 84; uint32_t java_name_index
	}, ; 82
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000055, ; uint32_t type_token_id
		i32 1187; uint32_t java_name_index
	}, ; 83
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000340, ; uint32_t type_token_id
		i32 341; uint32_t java_name_index
	}, ; 84
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020002d2, ; uint32_t type_token_id
		i32 781; uint32_t java_name_index
	}, ; 85
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200063f, ; uint32_t type_token_id
		i32 974; uint32_t java_name_index
	}, ; 86
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200032b, ; uint32_t type_token_id
		i32 321; uint32_t java_name_index
	}, ; 87
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200008b, ; uint32_t type_token_id
		i32 1340; uint32_t java_name_index
	}, ; 88
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001e0, ; uint32_t type_token_id
		i32 761; uint32_t java_name_index
	}, ; 89
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003e2, ; uint32_t type_token_id
		i32 435; uint32_t java_name_index
	}, ; 90
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000e2, ; uint32_t type_token_id
		i32 1165; uint32_t java_name_index
	}, ; 91
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001d4, ; uint32_t type_token_id
		i32 173; uint32_t java_name_index
	}, ; 92
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001d0, ; uint32_t type_token_id
		i32 748; uint32_t java_name_index
	}, ; 93
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200035f, ; uint32_t type_token_id
		i32 789; uint32_t java_name_index
	}, ; 94
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000367, ; uint32_t type_token_id
		i32 368; uint32_t java_name_index
	}, ; 95
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003fb, ; uint32_t type_token_id
		i32 453; uint32_t java_name_index
	}, ; 96
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000342, ; uint32_t type_token_id
		i32 342; uint32_t java_name_index
	}, ; 97
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 246; uint32_t java_name_index
	}, ; 98
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020002eb, ; uint32_t type_token_id
		i32 782; uint32_t java_name_index
	}, ; 99
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 451; uint32_t java_name_index
	}, ; 100
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 931; uint32_t java_name_index
	}, ; 101
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200034a, ; uint32_t type_token_id
		i32 348; uint32_t java_name_index
	}, ; 102
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 551; uint32_t java_name_index
	}, ; 103
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1021; uint32_t java_name_index
	}, ; 104
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 1299; uint32_t java_name_index
	}, ; 105
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000243, ; uint32_t type_token_id
		i32 226; uint32_t java_name_index
	}, ; 106
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 209; uint32_t java_name_index
	}, ; 107
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001a3, ; uint32_t type_token_id
		i32 138; uint32_t java_name_index
	}, ; 108
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 1220; uint32_t java_name_index
	}, ; 109
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000248, ; uint32_t type_token_id
		i32 229; uint32_t java_name_index
	}, ; 110
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003d8, ; uint32_t type_token_id
		i32 969; uint32_t java_name_index
	}, ; 111
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1008; uint32_t java_name_index
	}, ; 112
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x02000028, ; uint32_t type_token_id
		i32 1044; uint32_t java_name_index
	}, ; 113
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1261; uint32_t java_name_index
	}, ; 114
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 1209; uint32_t java_name_index
	}, ; 115
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003d2, ; uint32_t type_token_id
		i32 424; uint32_t java_name_index
	}, ; 116
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000d8, ; uint32_t type_token_id
		i32 20; uint32_t java_name_index
	}, ; 117
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1265; uint32_t java_name_index
	}, ; 118
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 186; uint32_t java_name_index
	}, ; 119
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000319, ; uint32_t type_token_id
		i32 304; uint32_t java_name_index
	}, ; 120
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 1385; uint32_t java_name_index
	}, ; 121
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000413, ; uint32_t type_token_id
		i32 469; uint32_t java_name_index
	}, ; 122
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000be, ; uint32_t type_token_id
		i32 1137; uint32_t java_name_index
	}, ; 123
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000158, ; uint32_t type_token_id
		i32 95; uint32_t java_name_index
	}, ; 124
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 472; uint32_t java_name_index
	}, ; 125
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000031, ; uint32_t type_token_id
		i32 552; uint32_t java_name_index
	}, ; 126
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003ba, ; uint32_t type_token_id
		i32 949; uint32_t java_name_index
	}, ; 127
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000059, ; uint32_t type_token_id
		i32 1310; uint32_t java_name_index
	}, ; 128
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 247; uint32_t java_name_index
	}, ; 129
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001bb, ; uint32_t type_token_id
		i32 156; uint32_t java_name_index
	}, ; 130
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002be, ; uint32_t type_token_id
		i32 281; uint32_t java_name_index
	}, ; 131
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002ab, ; uint32_t type_token_id
		i32 272; uint32_t java_name_index
	}, ; 132
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 1314; uint32_t java_name_index
	}, ; 133
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200039c, ; uint32_t type_token_id
		i32 398; uint32_t java_name_index
	}, ; 134
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200056f, ; uint32_t type_token_id
		i32 877; uint32_t java_name_index
	}, ; 135
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000d4, ; uint32_t type_token_id
		i32 18; uint32_t java_name_index
	}, ; 136
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1064; uint32_t java_name_index
	}, ; 137
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 870; uint32_t java_name_index
	}, ; 138
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1054; uint32_t java_name_index
	}, ; 139
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 703; uint32_t java_name_index
	}, ; 140
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000d4, ; uint32_t type_token_id
		i32 1152; uint32_t java_name_index
	}, ; 141
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000060, ; uint32_t type_token_id
		i32 582; uint32_t java_name_index
	}, ; 142
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002c4, ; uint32_t type_token_id
		i32 284; uint32_t java_name_index
	}, ; 143
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003e2, ; uint32_t type_token_id
		i32 982; uint32_t java_name_index
	}, ; 144
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000640, ; uint32_t type_token_id
		i32 975; uint32_t java_name_index
	}, ; 145
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1035; uint32_t java_name_index
	}, ; 146
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000048, ; uint32_t type_token_id
		i32 864; uint32_t java_name_index
	}, ; 147
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 245; uint32_t java_name_index
	}, ; 148
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x0200003f, ; uint32_t type_token_id
		i32 562; uint32_t java_name_index
	}, ; 149
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000ea, ; uint32_t type_token_id
		i32 30; uint32_t java_name_index
	}, ; 150
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 849; uint32_t java_name_index
	}, ; 151
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000ae, ; uint32_t type_token_id
		i32 642; uint32_t java_name_index
	}, ; 152
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001b2, ; uint32_t type_token_id
		i32 149; uint32_t java_name_index
	}, ; 153
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 818; uint32_t java_name_index
	}, ; 154
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000e6, ; uint32_t type_token_id
		i32 1169; uint32_t java_name_index
	}, ; 155
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200037c, ; uint32_t type_token_id
		i32 904; uint32_t java_name_index
	}, ; 156
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 587; uint32_t java_name_index
	}, ; 157
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001c4, ; uint32_t type_token_id
		i32 738; uint32_t java_name_index
	}, ; 158
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001d0, ; uint32_t type_token_id
		i32 170; uint32_t java_name_index
	}, ; 159
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 103; uint32_t java_name_index
	}, ; 160
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 1109; uint32_t java_name_index
	}, ; 161
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 191; uint32_t java_name_index
	}, ; 162
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200040c, ; uint32_t type_token_id
		i32 464; uint32_t java_name_index
	}, ; 163
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001b9, ; uint32_t type_token_id
		i32 154; uint32_t java_name_index
	}, ; 164
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 1368; uint32_t java_name_index
	}, ; 165
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200038f, ; uint32_t type_token_id
		i32 390; uint32_t java_name_index
	}, ; 166
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003d7, ; uint32_t type_token_id
		i32 428; uint32_t java_name_index
	}, ; 167
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 167; uint32_t java_name_index
	}, ; 168
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000338, ; uint32_t type_token_id
		i32 334; uint32_t java_name_index
	}, ; 169
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000ac, ; uint32_t type_token_id
		i32 1363; uint32_t java_name_index
	}, ; 170
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000c7, ; uint32_t type_token_id
		i32 1145; uint32_t java_name_index
	}, ; 171
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000e3, ; uint32_t type_token_id
		i32 1166; uint32_t java_name_index
	}, ; 172
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 597; uint32_t java_name_index
	}, ; 173
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 487; uint32_t java_name_index
	}, ; 174
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 694; uint32_t java_name_index
	}, ; 175
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000356, ; uint32_t type_token_id
		i32 356; uint32_t java_name_index
	}, ; 176
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1280; uint32_t java_name_index
	}, ; 177
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 8; uint32_t java_name_index
	}, ; 178
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000382, ; uint32_t type_token_id
		i32 382; uint32_t java_name_index
	}, ; 179
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200045d, ; uint32_t type_token_id
		i32 517; uint32_t java_name_index
	}, ; 180
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000261, ; uint32_t type_token_id
		i32 239; uint32_t java_name_index
	}, ; 181
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 545; uint32_t java_name_index
	}, ; 182
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000054, ; uint32_t type_token_id
		i32 1306; uint32_t java_name_index
	}, ; 183
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 929; uint32_t java_name_index
	}, ; 184
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003af, ; uint32_t type_token_id
		i32 938; uint32_t java_name_index
	}, ; 185
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000073, ; uint32_t type_token_id
		i32 1205; uint32_t java_name_index
	}, ; 186
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1025; uint32_t java_name_index
	}, ; 187
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020006af, ; uint32_t type_token_id
		i32 981; uint32_t java_name_index
	}, ; 188
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000dc, ; uint32_t type_token_id
		i32 23; uint32_t java_name_index
	}, ; 189
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000ae, ; uint32_t type_token_id
		i32 1365; uint32_t java_name_index
	}, ; 190
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003bb, ; uint32_t type_token_id
		i32 950; uint32_t java_name_index
	}, ; 191
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000099, ; uint32_t type_token_id
		i32 627; uint32_t java_name_index
	}, ; 192
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000ee, ; uint32_t type_token_id
		i32 32; uint32_t java_name_index
	}, ; 193
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200020f, ; uint32_t type_token_id
		i32 776; uint32_t java_name_index
	}, ; 194
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001c7, ; uint32_t type_token_id
		i32 740; uint32_t java_name_index
	}, ; 195
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003d1, ; uint32_t type_token_id
		i32 964; uint32_t java_name_index
	}, ; 196
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000198, ; uint32_t type_token_id
		i32 733; uint32_t java_name_index
	}, ; 197
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000337, ; uint32_t type_token_id
		i32 878; uint32_t java_name_index
	}, ; 198
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x02000009, ; uint32_t type_token_id
		i32 1242; uint32_t java_name_index
	}, ; 199
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 1076; uint32_t java_name_index
	}, ; 200
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000f3, ; uint32_t type_token_id
		i32 35; uint32_t java_name_index
	}, ; 201
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 799; uint32_t java_name_index
	}, ; 202
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1078; uint32_t java_name_index
	}, ; 203
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000e3, ; uint32_t type_token_id
		i32 27; uint32_t java_name_index
	}, ; 204
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 693; uint32_t java_name_index
	}, ; 205
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000154, ; uint32_t type_token_id
		i32 92; uint32_t java_name_index
	}, ; 206
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001eb, ; uint32_t type_token_id
		i32 187; uint32_t java_name_index
	}, ; 207
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x02000013, ; uint32_t type_token_id
		i32 660; uint32_t java_name_index
	}, ; 208
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200028b, ; uint32_t type_token_id
		i32 256; uint32_t java_name_index
	}, ; 209
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001cc, ; uint32_t type_token_id
		i32 744; uint32_t java_name_index
	}, ; 210
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200032f, ; uint32_t type_token_id
		i32 325; uint32_t java_name_index
	}, ; 211
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003c4, ; uint32_t type_token_id
		i32 417; uint32_t java_name_index
	}, ; 212
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000395, ; uint32_t type_token_id
		i32 927; uint32_t java_name_index
	}, ; 213
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200015a, ; uint32_t type_token_id
		i32 96; uint32_t java_name_index
	}, ; 214
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200013c, ; uint32_t type_token_id
		i32 75; uint32_t java_name_index
	}, ; 215
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1073; uint32_t java_name_index
	}, ; 216
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000fc, ; uint32_t type_token_id
		i32 41; uint32_t java_name_index
	}, ; 217
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1057; uint32_t java_name_index
	}, ; 218
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 6; uint32_t java_name_index
	}, ; 219
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200031a, ; uint32_t type_token_id
		i32 305; uint32_t java_name_index
	}, ; 220
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 684; uint32_t java_name_index
	}, ; 221
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001d8, ; uint32_t type_token_id
		i32 176; uint32_t java_name_index
	}, ; 222
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index
		i32 u0x02000003, ; uint32_t type_token_id
		i32 1253; uint32_t java_name_index
	}, ; 223
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200037a, ; uint32_t type_token_id
		i32 900; uint32_t java_name_index
	}, ; 224
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 708; uint32_t java_name_index
	}, ; 225
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000110, ; uint32_t type_token_id
		i32 55; uint32_t java_name_index
	}, ; 226
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003d9, ; uint32_t type_token_id
		i32 429; uint32_t java_name_index
	}, ; 227
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003d6, ; uint32_t type_token_id
		i32 968; uint32_t java_name_index
	}, ; 228
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x02000021, ; uint32_t type_token_id
		i32 671; uint32_t java_name_index
	}, ; 229
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200049f, ; uint32_t type_token_id
		i32 876; uint32_t java_name_index
	}, ; 230
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000193, ; uint32_t type_token_id
		i32 127; uint32_t java_name_index
	}, ; 231
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1070; uint32_t java_name_index
	}, ; 232
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200012a, ; uint32_t type_token_id
		i32 68; uint32_t java_name_index
	}, ; 233
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000087, ; uint32_t type_token_id
		i32 621; uint32_t java_name_index
	}, ; 234
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000196, ; uint32_t type_token_id
		i32 130; uint32_t java_name_index
	}, ; 235
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001e1, ; uint32_t type_token_id
		i32 180; uint32_t java_name_index
	}, ; 236
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 137; uint32_t java_name_index
	}, ; 237
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000105, ; uint32_t type_token_id
		i32 50; uint32_t java_name_index
	}, ; 238
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003c2, ; uint32_t type_token_id
		i32 957; uint32_t java_name_index
	}, ; 239
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 810; uint32_t java_name_index
	}, ; 240
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x0200002e, ; uint32_t type_token_id
		i32 550; uint32_t java_name_index
	}, ; 241
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000472, ; uint32_t type_token_id
		i32 531; uint32_t java_name_index
	}, ; 242
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003be, ; uint32_t type_token_id
		i32 954; uint32_t java_name_index
	}, ; 243
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000049, ; uint32_t type_token_id
		i32 997; uint32_t java_name_index
	}, ; 244
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000066, ; uint32_t type_token_id
		i32 583; uint32_t java_name_index
	}, ; 245
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000044, ; uint32_t type_token_id
		i32 1098; uint32_t java_name_index
	}, ; 246
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 233; uint32_t java_name_index
	}, ; 247
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1260; uint32_t java_name_index
	}, ; 248
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1067; uint32_t java_name_index
	}, ; 249
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200031b, ; uint32_t type_token_id
		i32 306; uint32_t java_name_index
	}, ; 250
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000383, ; uint32_t type_token_id
		i32 383; uint32_t java_name_index
	}, ; 251
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000392, ; uint32_t type_token_id
		i32 392; uint32_t java_name_index
	}, ; 252
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 594; uint32_t java_name_index
	}, ; 253
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 546; uint32_t java_name_index
	}, ; 254
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000028, ; uint32_t type_token_id
		i32 692; uint32_t java_name_index
	}, ; 255
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000360, ; uint32_t type_token_id
		i32 363; uint32_t java_name_index
	}, ; 256
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000366, ; uint32_t type_token_id
		i32 367; uint32_t java_name_index
	}, ; 257
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000444, ; uint32_t type_token_id
		i32 495; uint32_t java_name_index
	}, ; 258
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 593; uint32_t java_name_index
	}, ; 259
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 235; uint32_t java_name_index
	}, ; 260
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 148; uint32_t java_name_index
	}, ; 261
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 988; uint32_t java_name_index
	}, ; 262
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1297; uint32_t java_name_index
	}, ; 263
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1329; uint32_t java_name_index
	}, ; 264
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 445; uint32_t java_name_index
	}, ; 265
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000be, ; uint32_t type_token_id
		i32 1376; uint32_t java_name_index
	}, ; 266
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000015, ; uint32_t type_token_id
		i32 797; uint32_t java_name_index
	}, ; 267
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002bd, ; uint32_t type_token_id
		i32 280; uint32_t java_name_index
	}, ; 268
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000af, ; uint32_t type_token_id
		i32 1366; uint32_t java_name_index
	}, ; 269
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000e4, ; uint32_t type_token_id
		i32 1167; uint32_t java_name_index
	}, ; 270
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000176, ; uint32_t type_token_id
		i32 113; uint32_t java_name_index
	}, ; 271
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003c5, ; uint32_t type_token_id
		i32 959; uint32_t java_name_index
	}, ; 272
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 373; uint32_t java_name_index
	}, ; 273
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 2; uint32_t java_name_index
	}, ; 274
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000467, ; uint32_t type_token_id
		i32 522; uint32_t java_name_index
	}, ; 275
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 384; uint32_t java_name_index
	}, ; 276
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 410; uint32_t java_name_index
	}, ; 277
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000166, ; uint32_t type_token_id
		i32 104; uint32_t java_name_index
	}, ; 278
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000211, ; uint32_t type_token_id
		i32 777; uint32_t java_name_index
	}, ; 279
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000459, ; uint32_t type_token_id
		i32 515; uint32_t java_name_index
	}, ; 280
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000232, ; uint32_t type_token_id
		i32 216; uint32_t java_name_index
	}, ; 281
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 791; uint32_t java_name_index
	}, ; 282
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1241; uint32_t java_name_index
	}, ; 283
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000e2, ; uint32_t type_token_id
		i32 715; uint32_t java_name_index
	}, ; 284
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001f7, ; uint32_t type_token_id
		i32 192; uint32_t java_name_index
	}, ; 285
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 147; uint32_t java_name_index
	}, ; 286
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 1298; uint32_t java_name_index
	}, ; 287
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000db, ; uint32_t type_token_id
		i32 1158; uint32_t java_name_index
	}, ; 288
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 273; uint32_t java_name_index
	}, ; 289
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 1180; uint32_t java_name_index
	}, ; 290
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1207; uint32_t java_name_index
	}, ; 291
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200036a, ; uint32_t type_token_id
		i32 898; uint32_t java_name_index
	}, ; 292
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000078, ; uint32_t type_token_id
		i32 1331; uint32_t java_name_index
	}, ; 293
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002b7, ; uint32_t type_token_id
		i32 276; uint32_t java_name_index
	}, ; 294
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 1228; uint32_t java_name_index
	}, ; 295
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001fe, ; uint32_t type_token_id
		i32 197; uint32_t java_name_index
	}, ; 296
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000c4, ; uint32_t type_token_id
		i32 1143; uint32_t java_name_index
	}, ; 297
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000041, ; uint32_t type_token_id
		i32 862; uint32_t java_name_index
	}, ; 298
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001d5, ; uint32_t type_token_id
		i32 753; uint32_t java_name_index
	}, ; 299
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000323, ; uint32_t type_token_id
		i32 314; uint32_t java_name_index
	}, ; 300
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001ad, ; uint32_t type_token_id
		i32 146; uint32_t java_name_index
	}, ; 301
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000358, ; uint32_t type_token_id
		i32 892; uint32_t java_name_index
	}, ; 302
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1099; uint32_t java_name_index
	}, ; 303
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002c3, ; uint32_t type_token_id
		i32 283; uint32_t java_name_index
	}, ; 304
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000192, ; uint32_t type_token_id
		i32 126; uint32_t java_name_index
	}, ; 305
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000628, ; uint32_t type_token_id
		i32 924; uint32_t java_name_index
	}, ; 306
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000b7, ; uint32_t type_token_id
		i32 1130; uint32_t java_name_index
	}, ; 307
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000017, ; uint32_t type_token_id
		i32 798; uint32_t java_name_index
	}, ; 308
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x02000011, ; uint32_t type_token_id
		i32 658; uint32_t java_name_index
	}, ; 309
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000061, ; uint32_t type_token_id
		i32 1317; uint32_t java_name_index
	}, ; 310
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000378, ; uint32_t type_token_id
		i32 899; uint32_t java_name_index
	}, ; 311
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 891; uint32_t java_name_index
	}, ; 312
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 800; uint32_t java_name_index
	}, ; 313
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003d2, ; uint32_t type_token_id
		i32 965; uint32_t java_name_index
	}, ; 314
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002a8, ; uint32_t type_token_id
		i32 270; uint32_t java_name_index
	}, ; 315
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200032e, ; uint32_t type_token_id
		i32 324; uint32_t java_name_index
	}, ; 316
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000358, ; uint32_t type_token_id
		i32 358; uint32_t java_name_index
	}, ; 317
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200031f, ; uint32_t type_token_id
		i32 310; uint32_t java_name_index
	}, ; 318
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000f6, ; uint32_t type_token_id
		i32 37; uint32_t java_name_index
	}, ; 319
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1116; uint32_t java_name_index
	}, ; 320
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 243; uint32_t java_name_index
	}, ; 321
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001b4, ; uint32_t type_token_id
		i32 150; uint32_t java_name_index
	}, ; 322
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002f2, ; uint32_t type_token_id
		i32 293; uint32_t java_name_index
	}, ; 323
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 232; uint32_t java_name_index
	}, ; 324
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000293, ; uint32_t type_token_id
		i32 259; uint32_t java_name_index
	}, ; 325
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000ae, ; uint32_t type_token_id
		i32 1125; uint32_t java_name_index
	}, ; 326
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000643, ; uint32_t type_token_id
		i32 978; uint32_t java_name_index
	}, ; 327
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020006ae, ; uint32_t type_token_id
		i32 980; uint32_t java_name_index
	}, ; 328
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 211; uint32_t java_name_index
	}, ; 329
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000046, ; uint32_t type_token_id
		i32 1234; uint32_t java_name_index
	}, ; 330
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 236; uint32_t java_name_index
	}, ; 331
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 491; uint32_t java_name_index
	}, ; 332
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003ea, ; uint32_t type_token_id
		i32 442; uint32_t java_name_index
	}, ; 333
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000052, ; uint32_t type_token_id
		i32 1304; uint32_t java_name_index
	}, ; 334
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003e0, ; uint32_t type_token_id
		i32 433; uint32_t java_name_index
	}, ; 335
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000bb, ; uint32_t type_token_id
		i32 1134; uint32_t java_name_index
	}, ; 336
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000191, ; uint32_t type_token_id
		i32 125; uint32_t java_name_index
	}, ; 337
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000dc, ; uint32_t type_token_id
		i32 1159; uint32_t java_name_index
	}, ; 338
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 189; uint32_t java_name_index
	}, ; 339
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000107, ; uint32_t type_token_id
		i32 51; uint32_t java_name_index
	}, ; 340
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000bc, ; uint32_t type_token_id
		i32 1135; uint32_t java_name_index
	}, ; 341
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1277; uint32_t java_name_index
	}, ; 342
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1031; uint32_t java_name_index
	}, ; 343
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 1039; uint32_t java_name_index
	}, ; 344
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 813; uint32_t java_name_index
	}, ; 345
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 1229; uint32_t java_name_index
	}, ; 346
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1284; uint32_t java_name_index
	}, ; 347
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000043, ; uint32_t type_token_id
		i32 565; uint32_t java_name_index
	}, ; 348
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1194; uint32_t java_name_index
	}, ; 349
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 630; uint32_t java_name_index
	}, ; 350
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002b8, ; uint32_t type_token_id
		i32 277; uint32_t java_name_index
	}, ; 351
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000042, ; uint32_t type_token_id
		i32 869; uint32_t java_name_index
	}, ; 352
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000068, ; uint32_t type_token_id
		i32 1115; uint32_t java_name_index
	}, ; 353
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 1181; uint32_t java_name_index
	}, ; 354
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000097, ; uint32_t type_token_id
		i32 1037; uint32_t java_name_index
	}, ; 355
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1249; uint32_t java_name_index
	}, ; 356
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 1139; uint32_t java_name_index
	}, ; 357
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 811; uint32_t java_name_index
	}, ; 358
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000023, ; uint32_t type_token_id
		i32 1080; uint32_t java_name_index
	}, ; 359
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000416, ; uint32_t type_token_id
		i32 471; uint32_t java_name_index
	}, ; 360
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003bf, ; uint32_t type_token_id
		i32 415; uint32_t java_name_index
	}, ; 361
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1127; uint32_t java_name_index
	}, ; 362
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000188, ; uint32_t type_token_id
		i32 723; uint32_t java_name_index
	}, ; 363
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000bb, ; uint32_t type_token_id
		i32 1373; uint32_t java_name_index
	}, ; 364
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 1312; uint32_t java_name_index
	}, ; 365
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001ce, ; uint32_t type_token_id
		i32 746; uint32_t java_name_index
	}, ; 366
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003db, ; uint32_t type_token_id
		i32 430; uint32_t java_name_index
	}, ; 367
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 207; uint32_t java_name_index
	}, ; 368
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000335, ; uint32_t type_token_id
		i32 331; uint32_t java_name_index
	}, ; 369
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000064, ; uint32_t type_token_id
		i32 1113; uint32_t java_name_index
	}, ; 370
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1034; uint32_t java_name_index
	}, ; 371
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200018c, ; uint32_t type_token_id
		i32 123; uint32_t java_name_index
	}, ; 372
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1346; uint32_t java_name_index
	}, ; 373
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1197; uint32_t java_name_index
	}, ; 374
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000025, ; uint32_t type_token_id
		i32 1223; uint32_t java_name_index
	}, ; 375
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 850; uint32_t java_name_index
	}, ; 376
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200032c, ; uint32_t type_token_id
		i32 322; uint32_t java_name_index
	}, ; 377
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000053, ; uint32_t type_token_id
		i32 1185; uint32_t java_name_index
	}, ; 378
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000027, ; uint32_t type_token_id
		i32 1270; uint32_t java_name_index
	}, ; 379
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200034e, ; uint32_t type_token_id
		i32 887; uint32_t java_name_index
	}, ; 380
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 381; uint32_t java_name_index
	}, ; 381
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003aa, ; uint32_t type_token_id
		i32 404; uint32_t java_name_index
	}, ; 382
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001a9, ; uint32_t type_token_id
		i32 143; uint32_t java_name_index
	}, ; 383
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1089; uint32_t java_name_index
	}, ; 384
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1235; uint32_t java_name_index
	}, ; 385
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001e8, ; uint32_t type_token_id
		i32 185; uint32_t java_name_index
	}, ; 386
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000331, ; uint32_t type_token_id
		i32 327; uint32_t java_name_index
	}, ; 387
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 581; uint32_t java_name_index
	}, ; 388
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000068, ; uint32_t type_token_id
		i32 1322; uint32_t java_name_index
	}, ; 389
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 165; uint32_t java_name_index
	}, ; 390
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003b4, ; uint32_t type_token_id
		i32 943; uint32_t java_name_index
	}, ; 391
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000054, ; uint32_t type_token_id
		i32 600; uint32_t java_name_index
	}, ; 392
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x02000018, ; uint32_t type_token_id
		i32 1383; uint32_t java_name_index
	}, ; 393
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 613; uint32_t java_name_index
	}, ; 394
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 547; uint32_t java_name_index
	}, ; 395
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000041, ; uint32_t type_token_id
		i32 564; uint32_t java_name_index
	}, ; 396
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000009, ; uint32_t type_token_id
		i32 1256; uint32_t java_name_index
	}, ; 397
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000374, ; uint32_t type_token_id
		i32 374; uint32_t java_name_index
	}, ; 398
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000079, ; uint32_t type_token_id
		i32 1332; uint32_t java_name_index
	}, ; 399
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000029, ; uint32_t type_token_id
		i32 1084; uint32_t java_name_index
	}, ; 400
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000f1, ; uint32_t type_token_id
		i32 34; uint32_t java_name_index
	}, ; 401
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000357, ; uint32_t type_token_id
		i32 357; uint32_t java_name_index
	}, ; 402
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200030b, ; uint32_t type_token_id
		i32 297; uint32_t java_name_index
	}, ; 403
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000447, ; uint32_t type_token_id
		i32 498; uint32_t java_name_index
	}, ; 404
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 118; uint32_t java_name_index
	}, ; 405
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000458, ; uint32_t type_token_id
		i32 514; uint32_t java_name_index
	}, ; 406
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200014d, ; uint32_t type_token_id
		i32 87; uint32_t java_name_index
	}, ; 407
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 689; uint32_t java_name_index
	}, ; 408
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000049, ; uint32_t type_token_id
		i32 865; uint32_t java_name_index
	}, ; 409
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000c4, ; uint32_t type_token_id
		i32 9; uint32_t java_name_index
	}, ; 410
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000350, ; uint32_t type_token_id
		i32 352; uint32_t java_name_index
	}, ; 411
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000054, ; uint32_t type_token_id
		i32 1186; uint32_t java_name_index
	}, ; 412
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000062, ; uint32_t type_token_id
		i32 605; uint32_t java_name_index
	}, ; 413
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000002, ; uint32_t type_token_id
		i32 1179; uint32_t java_name_index
	}, ; 414
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 166; uint32_t java_name_index
	}, ; 415
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000393, ; uint32_t type_token_id
		i32 393; uint32_t java_name_index
	}, ; 416
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1201; uint32_t java_name_index
	}, ; 417
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000130, ; uint32_t type_token_id
		i32 70; uint32_t java_name_index
	}, ; 418
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003bd, ; uint32_t type_token_id
		i32 413; uint32_t java_name_index
	}, ; 419
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 33; uint32_t java_name_index
	}, ; 420
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1148; uint32_t java_name_index
	}, ; 421
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001aa, ; uint32_t type_token_id
		i32 144; uint32_t java_name_index
	}, ; 422
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000207, ; uint32_t type_token_id
		i32 202; uint32_t java_name_index
	}, ; 423
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1230; uint32_t java_name_index
	}, ; 424
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1326; uint32_t java_name_index
	}, ; 425
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200046f, ; uint32_t type_token_id
		i32 529; uint32_t java_name_index
	}, ; 426
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 610; uint32_t java_name_index
	}, ; 427
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000eb, ; uint32_t type_token_id
		i32 1174; uint32_t java_name_index
	}, ; 428
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 29; uint32_t java_name_index
	}, ; 429
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000031, ; uint32_t type_token_id
		i32 858; uint32_t java_name_index
	}, ; 430
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200046c, ; uint32_t type_token_id
		i32 526; uint32_t java_name_index
	}, ; 431
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 598; uint32_t java_name_index
	}, ; 432
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200018b, ; uint32_t type_token_id
		i32 725; uint32_t java_name_index
	}, ; 433
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x02000015, ; uint32_t type_token_id
		i32 662; uint32_t java_name_index
	}, ; 434
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000330, ; uint32_t type_token_id
		i32 326; uint32_t java_name_index
	}, ; 435
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 1239; uint32_t java_name_index
	}, ; 436
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000bd, ; uint32_t type_token_id
		i32 1136; uint32_t java_name_index
	}, ; 437
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001df, ; uint32_t type_token_id
		i32 760; uint32_t java_name_index
	}, ; 438
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 1015; uint32_t java_name_index
	}, ; 439
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002c5, ; uint32_t type_token_id
		i32 285; uint32_t java_name_index
	}, ; 440
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000bc, ; uint32_t type_token_id
		i32 711; uint32_t java_name_index
	}, ; 441
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000d1, ; uint32_t type_token_id
		i32 1149; uint32_t java_name_index
	}, ; 442
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1251; uint32_t java_name_index
	}, ; 443
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200031d, ; uint32_t type_token_id
		i32 308; uint32_t java_name_index
	}, ; 444
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000074, ; uint32_t type_token_id
		i32 1121; uint32_t java_name_index
	}, ; 445
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003cb, ; uint32_t type_token_id
		i32 421; uint32_t java_name_index
	}, ; 446
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001bf, ; uint32_t type_token_id
		i32 160; uint32_t java_name_index
	}, ; 447
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 1301; uint32_t java_name_index
	}, ; 448
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000079, ; uint32_t type_token_id
		i32 1022; uint32_t java_name_index
	}, ; 449
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1350; uint32_t java_name_index
	}, ; 450
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003a3, ; uint32_t type_token_id
		i32 402; uint32_t java_name_index
	}, ; 451
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 815; uint32_t java_name_index
	}, ; 452
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1001; uint32_t java_name_index
	}, ; 453
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200024c, ; uint32_t type_token_id
		i32 230; uint32_t java_name_index
	}, ; 454
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 248; uint32_t java_name_index
	}, ; 455
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000048, ; uint32_t type_token_id
		i32 996; uint32_t java_name_index
	}, ; 456
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 940; uint32_t java_name_index
	}, ; 457
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200035b, ; uint32_t type_token_id
		i32 893; uint32_t java_name_index
	}, ; 458
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 792; uint32_t java_name_index
	}, ; 459
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001c1, ; uint32_t type_token_id
		i32 161; uint32_t java_name_index
	}, ; 460
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000358, ; uint32_t type_token_id
		i32 787; uint32_t java_name_index
	}, ; 461
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000286, ; uint32_t type_token_id
		i32 253; uint32_t java_name_index
	}, ; 462
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 601; uint32_t java_name_index
	}, ; 463
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 1193; uint32_t java_name_index
	}, ; 464
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000027, ; uint32_t type_token_id
		i32 1046; uint32_t java_name_index
	}, ; 465
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1077; uint32_t java_name_index
	}, ; 466
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1146; uint32_t java_name_index
	}, ; 467
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001c3, ; uint32_t type_token_id
		i32 163; uint32_t java_name_index
	}, ; 468
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000120, ; uint32_t type_token_id
		i32 63; uint32_t java_name_index
	}, ; 469
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003a9, ; uint32_t type_token_id
		i32 403; uint32_t java_name_index
	}, ; 470
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000346, ; uint32_t type_token_id
		i32 346; uint32_t java_name_index
	}, ; 471
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000242, ; uint32_t type_token_id
		i32 225; uint32_t java_name_index
	}, ; 472
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1354; uint32_t java_name_index
	}, ; 473
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 559; uint32_t java_name_index
	}, ; 474
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200023f, ; uint32_t type_token_id
		i32 224; uint32_t java_name_index
	}, ; 475
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1275; uint32_t java_name_index
	}, ; 476
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1114; uint32_t java_name_index
	}, ; 477
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020005f3, ; uint32_t type_token_id
		i32 881; uint32_t java_name_index
	}, ; 478
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1290; uint32_t java_name_index
	}, ; 479
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000231, ; uint32_t type_token_id
		i32 215; uint32_t java_name_index
	}, ; 480
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000336, ; uint32_t type_token_id
		i32 332; uint32_t java_name_index
	}, ; 481
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 1012; uint32_t java_name_index
	}, ; 482
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200036c, ; uint32_t type_token_id
		i32 370; uint32_t java_name_index
	}, ; 483
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000452, ; uint32_t type_token_id
		i32 509; uint32_t java_name_index
	}, ; 484
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000021, ; uint32_t type_token_id
		i32 805; uint32_t java_name_index
	}, ; 485
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000026, ; uint32_t type_token_id
		i32 1224; uint32_t java_name_index
	}, ; 486
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020006ab, ; uint32_t type_token_id
		i32 895; uint32_t java_name_index
	}, ; 487
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x02000022, ; uint32_t type_token_id
		i32 1042; uint32_t java_name_index
	}, ; 488
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000058, ; uint32_t type_token_id
		i32 1189; uint32_t java_name_index
	}, ; 489
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000187, ; uint32_t type_token_id
		i32 722; uint32_t java_name_index
	}, ; 490
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000321, ; uint32_t type_token_id
		i32 312; uint32_t java_name_index
	}, ; 491
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003c9, ; uint32_t type_token_id
		i32 420; uint32_t java_name_index
	}, ; 492
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200037b, ; uint32_t type_token_id
		i32 901; uint32_t java_name_index
	}, ; 493
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001f2, ; uint32_t type_token_id
		i32 769; uint32_t java_name_index
	}, ; 494
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000029, ; uint32_t type_token_id
		i32 856; uint32_t java_name_index
	}, ; 495
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 241; uint32_t java_name_index
	}, ; 496
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 473; uint32_t java_name_index
	}, ; 497
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 854; uint32_t java_name_index
	}, ; 498
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 466; uint32_t java_name_index
	}, ; 499
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000041, ; uint32_t type_token_id
		i32 585; uint32_t java_name_index
	}, ; 500
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000a5, ; uint32_t type_token_id
		i32 1357; uint32_t java_name_index
	}, ; 501
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000021, ; uint32_t type_token_id
		i32 688; uint32_t java_name_index
	}, ; 502
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 623; uint32_t java_name_index
	}, ; 503
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000362, ; uint32_t type_token_id
		i32 364; uint32_t java_name_index
	}, ; 504
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000141, ; uint32_t type_token_id
		i32 79; uint32_t java_name_index
	}, ; 505
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000026, ; uint32_t type_token_id
		i32 1082; uint32_t java_name_index
	}, ; 506
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000031, ; uint32_t type_token_id
		i32 698; uint32_t java_name_index
	}, ; 507
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000091, ; uint32_t type_token_id
		i32 626; uint32_t java_name_index
	}, ; 508
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 801; uint32_t java_name_index
	}, ; 509
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000069, ; uint32_t type_token_id
		i32 1200; uint32_t java_name_index
	}, ; 510
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1335; uint32_t java_name_index
	}, ; 511
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000475, ; uint32_t type_token_id
		i32 534; uint32_t java_name_index
	}, ; 512
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1006; uint32_t java_name_index
	}, ; 513
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 685; uint32_t java_name_index
	}, ; 514
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 1244; uint32_t java_name_index
	}, ; 515
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001f5, ; uint32_t type_token_id
		i32 771; uint32_t java_name_index
	}, ; 516
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003ac, ; uint32_t type_token_id
		i32 406; uint32_t java_name_index
	}, ; 517
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200008c, ; uint32_t type_token_id
		i32 1341; uint32_t java_name_index
	}, ; 518
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 61; uint32_t java_name_index
	}, ; 519
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000327, ; uint32_t type_token_id
		i32 318; uint32_t java_name_index
	}, ; 520
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 520; uint32_t java_name_index
	}, ; 521
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000ba, ; uint32_t type_token_id
		i32 4; uint32_t java_name_index
	}, ; 522
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001e2, ; uint32_t type_token_id
		i32 181; uint32_t java_name_index
	}, ; 523
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200040d, ; uint32_t type_token_id
		i32 465; uint32_t java_name_index
	}, ; 524
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x020000a8, ; uint32_t type_token_id
		i32 1178; uint32_t java_name_index
	}, ; 525
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 1377; uint32_t java_name_index
	}, ; 526
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200033a, ; uint32_t type_token_id
		i32 336; uint32_t java_name_index
	}, ; 527
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000353, ; uint32_t type_token_id
		i32 355; uint32_t java_name_index
	}, ; 528
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000067, ; uint32_t type_token_id
		i32 1199; uint32_t java_name_index
	}, ; 529
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000188, ; uint32_t type_token_id
		i32 121; uint32_t java_name_index
	}, ; 530
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 831; uint32_t java_name_index
	}, ; 531
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 539; uint32_t java_name_index
	}, ; 532
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000d8, ; uint32_t type_token_id
		i32 1156; uint32_t java_name_index
	}, ; 533
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001cd, ; uint32_t type_token_id
		i32 745; uint32_t java_name_index
	}, ; 534
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000442, ; uint32_t type_token_id
		i32 493; uint32_t java_name_index
	}, ; 535
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 237; uint32_t java_name_index
	}, ; 536
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000359, ; uint32_t type_token_id
		i32 788; uint32_t java_name_index
	}, ; 537
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200030f, ; uint32_t type_token_id
		i32 300; uint32_t java_name_index
	}, ; 538
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 596; uint32_t java_name_index
	}, ; 539
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003b0, ; uint32_t type_token_id
		i32 409; uint32_t java_name_index
	}, ; 540
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000c5, ; uint32_t type_token_id
		i32 1381; uint32_t java_name_index
	}, ; 541
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1083; uint32_t java_name_index
	}, ; 542
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003dc, ; uint32_t type_token_id
		i32 972; uint32_t java_name_index
	}, ; 543
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000060, ; uint32_t type_token_id
		i32 1316; uint32_t java_name_index
	}, ; 544
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003d5, ; uint32_t type_token_id
		i32 967; uint32_t java_name_index
	}, ; 545
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000d6, ; uint32_t type_token_id
		i32 1154; uint32_t java_name_index
	}, ; 546
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200020d, ; uint32_t type_token_id
		i32 775; uint32_t java_name_index
	}, ; 547
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003e7, ; uint32_t type_token_id
		i32 439; uint32_t java_name_index
	}, ; 548
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 1283; uint32_t java_name_index
	}, ; 549
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001e9, ; uint32_t type_token_id
		i32 765; uint32_t java_name_index
	}, ; 550
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 650; uint32_t java_name_index
	}, ; 551
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 853; uint32_t java_name_index
	}, ; 552
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000056, ; uint32_t type_token_id
		i32 1188; uint32_t java_name_index
	}, ; 553
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000276, ; uint32_t type_token_id
		i32 250; uint32_t java_name_index
	}, ; 554
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000a9, ; uint32_t type_token_id
		i32 638; uint32_t java_name_index
	}, ; 555
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 1192; uint32_t java_name_index
	}, ; 556
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000087, ; uint32_t type_token_id
		i32 1216; uint32_t java_name_index
	}, ; 557
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000051, ; uint32_t type_token_id
		i32 574; uint32_t java_name_index
	}, ; 558
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 1282; uint32_t java_name_index
	}, ; 559
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 1210; uint32_t java_name_index
	}, ; 560
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 1315; uint32_t java_name_index
	}, ; 561
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000194, ; uint32_t type_token_id
		i32 128; uint32_t java_name_index
	}, ; 562
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000029, ; uint32_t type_token_id
		i32 1226; uint32_t java_name_index
	}, ; 563
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000ab, ; uint32_t type_token_id
		i32 1362; uint32_t java_name_index
	}, ; 564
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001d7, ; uint32_t type_token_id
		i32 175; uint32_t java_name_index
	}, ; 565
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000229, ; uint32_t type_token_id
		i32 779; uint32_t java_name_index
	}, ; 566
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000072, ; uint32_t type_token_id
		i32 1018; uint32_t java_name_index
	}, ; 567
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 1011; uint32_t java_name_index
	}, ; 568
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1065; uint32_t java_name_index
	}, ; 569
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000473, ; uint32_t type_token_id
		i32 532; uint32_t java_name_index
	}, ; 570
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001f4, ; uint32_t type_token_id
		i32 770; uint32_t java_name_index
	}, ; 571
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x02000017, ; uint32_t type_token_id
		i32 664; uint32_t java_name_index
	}, ; 572
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200037e, ; uint32_t type_token_id
		i32 908; uint32_t java_name_index
	}, ; 573
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000233, ; uint32_t type_token_id
		i32 217; uint32_t java_name_index
	}, ; 574
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000312, ; uint32_t type_token_id
		i32 302; uint32_t java_name_index
	}, ; 575
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003c8, ; uint32_t type_token_id
		i32 419; uint32_t java_name_index
	}, ; 576
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000632, ; uint32_t type_token_id
		i32 939; uint32_t java_name_index
	}, ; 577
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1337; uint32_t java_name_index
	}, ; 578
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003b9, ; uint32_t type_token_id
		i32 948; uint32_t java_name_index
	}, ; 579
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000635, ; uint32_t type_token_id
		i32 953; uint32_t java_name_index
	}, ; 580
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 656; uint32_t java_name_index
	}, ; 581
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001a7, ; uint32_t type_token_id
		i32 141; uint32_t java_name_index
	}, ; 582
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1091; uint32_t java_name_index
	}, ; 583
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000e1, ; uint32_t type_token_id
		i32 26; uint32_t java_name_index
	}, ; 584
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1062; uint32_t java_name_index
	}, ; 585
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000084, ; uint32_t type_token_id
		i32 1214; uint32_t java_name_index
	}, ; 586
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000100, ; uint32_t type_token_id
		i32 45; uint32_t java_name_index
	}, ; 587
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003f3, ; uint32_t type_token_id
		i32 447; uint32_t java_name_index
	}, ; 588
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000348, ; uint32_t type_token_id
		i32 347; uint32_t java_name_index
	}, ; 589
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000333, ; uint32_t type_token_id
		i32 329; uint32_t java_name_index
	}, ; 590
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000641, ; uint32_t type_token_id
		i32 976; uint32_t java_name_index
	}, ; 591
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 475; uint32_t java_name_index
	}, ; 592
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001e4, ; uint32_t type_token_id
		i32 762; uint32_t java_name_index
	}, ; 593
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 408; uint32_t java_name_index
	}, ; 594
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 681; uint32_t java_name_index
	}, ; 595
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000051, ; uint32_t type_token_id
		i32 1303; uint32_t java_name_index
	}, ; 596
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 1364; uint32_t java_name_index
	}, ; 597
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000037, ; uint32_t type_token_id
		i32 1233; uint32_t java_name_index
	}, ; 598
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000322, ; uint32_t type_token_id
		i32 313; uint32_t java_name_index
	}, ; 599
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000e0, ; uint32_t type_token_id
		i32 1163; uint32_t java_name_index
	}, ; 600
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 569; uint32_t java_name_index
	}, ; 601
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1342; uint32_t java_name_index
	}, ; 602
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1345; uint32_t java_name_index
	}, ; 603
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1245; uint32_t java_name_index
	}, ; 604
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 518; uint32_t java_name_index
	}, ; 605
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x02000024, ; uint32_t type_token_id
		i32 834; uint32_t java_name_index
	}, ; 606
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 477; uint32_t java_name_index
	}, ; 607
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001ab, ; uint32_t type_token_id
		i32 735; uint32_t java_name_index
	}, ; 608
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1252; uint32_t java_name_index
	}, ; 609
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 1014; uint32_t java_name_index
	}, ; 610
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000006, ; uint32_t type_token_id
		i32 653; uint32_t java_name_index
	}, ; 611
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200034d, ; uint32_t type_token_id
		i32 886; uint32_t java_name_index
	}, ; 612
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001ba, ; uint32_t type_token_id
		i32 155; uint32_t java_name_index
	}, ; 613
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001f0, ; uint32_t type_token_id
		i32 768; uint32_t java_name_index
	}, ; 614
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000629, ; uint32_t type_token_id
		i32 925; uint32_t java_name_index
	}, ; 615
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200048a, ; uint32_t type_token_id
		i32 538; uint32_t java_name_index
	}, ; 616
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 1351; uint32_t java_name_index
	}, ; 617
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 254; uint32_t java_name_index
	}, ; 618
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200031c, ; uint32_t type_token_id
		i32 307; uint32_t java_name_index
	}, ; 619
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1268; uint32_t java_name_index
	}, ; 620
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 223; uint32_t java_name_index
	}, ; 621
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000038, ; uint32_t type_token_id
		i32 1092; uint32_t java_name_index
	}, ; 622
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000010, ; uint32_t type_token_id
		i32 707; uint32_t java_name_index
	}, ; 623
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000380, ; uint32_t type_token_id
		i32 910; uint32_t java_name_index
	}, ; 624
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200033f, ; uint32_t type_token_id
		i32 340; uint32_t java_name_index
	}, ; 625
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1281; uint32_t java_name_index
	}, ; 626
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 686; uint32_t java_name_index
	}, ; 627
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 59; uint32_t java_name_index
	}, ; 628
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000613, ; uint32_t type_token_id
		i32 903; uint32_t java_name_index
	}, ; 629
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200035f, ; uint32_t type_token_id
		i32 362; uint32_t java_name_index
	}, ; 630
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000129, ; uint32_t type_token_id
		i32 67; uint32_t java_name_index
	}, ; 631
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000a8, ; uint32_t type_token_id
		i32 1360; uint32_t java_name_index
	}, ; 632
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 867; uint32_t java_name_index
	}, ; 633
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000011, ; uint32_t type_token_id
		i32 1285; uint32_t java_name_index
	}, ; 634
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 1002; uint32_t java_name_index
	}, ; 635
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 98; uint32_t java_name_index
	}, ; 636
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001a5, ; uint32_t type_token_id
		i32 734; uint32_t java_name_index
	}, ; 637
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 28; uint32_t java_name_index
	}, ; 638
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1053; uint32_t java_name_index
	}, ; 639
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001a6, ; uint32_t type_token_id
		i32 140; uint32_t java_name_index
	}, ; 640
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 796; uint32_t java_name_index
	}, ; 641
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1061; uint32_t java_name_index
	}, ; 642
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 1325; uint32_t java_name_index
	}, ; 643
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1157; uint32_t java_name_index
	}, ; 644
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000136, ; uint32_t type_token_id
		i32 73; uint32_t java_name_index
	}, ; 645
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000611, ; uint32_t type_token_id
		i32 902; uint32_t java_name_index
	}, ; 646
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000030, ; uint32_t type_token_id
		i32 1088; uint32_t java_name_index
	}, ; 647
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000010, ; uint32_t type_token_id
		i32 793; uint32_t java_name_index
	}, ; 648
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 1208; uint32_t java_name_index
	}, ; 649
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001b6, ; uint32_t type_token_id
		i32 151; uint32_t java_name_index
	}, ; 650
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000e5, ; uint32_t type_token_id
		i32 1168; uint32_t java_name_index
	}, ; 651
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000f9, ; uint32_t type_token_id
		i32 39; uint32_t java_name_index
	}, ; 652
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x02000035, ; uint32_t type_token_id
		i32 844; uint32_t java_name_index
	}, ; 653
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003a3, ; uint32_t type_token_id
		i32 937; uint32_t java_name_index
	}, ; 654
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000606, ; uint32_t type_token_id
		i32 894; uint32_t java_name_index
	}, ; 655
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003fa, ; uint32_t type_token_id
		i32 452; uint32_t java_name_index
	}, ; 656
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000056, ; uint32_t type_token_id
		i32 577; uint32_t java_name_index
	}, ; 657
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1019; uint32_t java_name_index
	}, ; 658
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 632; uint32_t java_name_index
	}, ; 659
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000a7, ; uint32_t type_token_id
		i32 1359; uint32_t java_name_index
	}, ; 660
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000039, ; uint32_t type_token_id
		i32 860; uint32_t java_name_index
	}, ; 661
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002ef, ; uint32_t type_token_id
		i32 291; uint32_t java_name_index
	}, ; 662
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000246, ; uint32_t type_token_id
		i32 228; uint32_t java_name_index
	}, ; 663
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 963; uint32_t java_name_index
	}, ; 664
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 7; uint32_t java_name_index
	}, ; 665
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 568; uint32_t java_name_index
	}, ; 666
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 1086; uint32_t java_name_index
	}, ; 667
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000187, ; uint32_t type_token_id
		i32 120; uint32_t java_name_index
	}, ; 668
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000085, ; uint32_t type_token_id
		i32 1027; uint32_t java_name_index
	}, ; 669
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200035d, ; uint32_t type_token_id
		i32 360; uint32_t java_name_index
	}, ; 670
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1004; uint32_t java_name_index
	}, ; 671
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000169, ; uint32_t type_token_id
		i32 107; uint32_t java_name_index
	}, ; 672
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001d2, ; uint32_t type_token_id
		i32 172; uint32_t java_name_index
	}, ; 673
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1129; uint32_t java_name_index
	}, ; 674
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 720; uint32_t java_name_index
	}, ; 675
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001de, ; uint32_t type_token_id
		i32 759; uint32_t java_name_index
	}, ; 676
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000428, ; uint32_t type_token_id
		i32 479; uint32_t java_name_index
	}, ; 677
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1045; uint32_t java_name_index
	}, ; 678
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000b9, ; uint32_t type_token_id
		i32 1132; uint32_t java_name_index
	}, ; 679
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 444; uint32_t java_name_index
	}, ; 680
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003c1, ; uint32_t type_token_id
		i32 956; uint32_t java_name_index
	}, ; 681
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003e9, ; uint32_t type_token_id
		i32 441; uint32_t java_name_index
	}, ; 682
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 575; uint32_t java_name_index
	}, ; 683
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1367; uint32_t java_name_index
	}, ; 684
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 1072; uint32_t java_name_index
	}, ; 685
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 1311; uint32_t java_name_index
	}, ; 686
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000234, ; uint32_t type_token_id
		i32 218; uint32_t java_name_index
	}, ; 687
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000040, ; uint32_t type_token_id
		i32 1096; uint32_t java_name_index
	}, ; 688
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 814; uint32_t java_name_index
	}, ; 689
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000345, ; uint32_t type_token_id
		i32 345; uint32_t java_name_index
	}, ; 690
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 262; uint32_t java_name_index
	}, ; 691
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001dd, ; uint32_t type_token_id
		i32 178; uint32_t java_name_index
	}, ; 692
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 1009; uint32_t java_name_index
	}, ; 693
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 832; uint32_t java_name_index
	}, ; 694
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001d1, ; uint32_t type_token_id
		i32 749; uint32_t java_name_index
	}, ; 695
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 603; uint32_t java_name_index
	}, ; 696
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 1339; uint32_t java_name_index
	}, ; 697
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1103; uint32_t java_name_index
	}, ; 698
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200019a, ; uint32_t type_token_id
		i32 133; uint32_t java_name_index
	}, ; 699
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200034d, ; uint32_t type_token_id
		i32 786; uint32_t java_name_index
	}, ; 700
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1274; uint32_t java_name_index
	}, ; 701
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000034, ; uint32_t type_token_id
		i32 554; uint32_t java_name_index
	}, ; 702
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000b7, ; uint32_t type_token_id
		i32 1369; uint32_t java_name_index
	}, ; 703
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 350; uint32_t java_name_index
	}, ; 704
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001d3, ; uint32_t type_token_id
		i32 751; uint32_t java_name_index
	}, ; 705
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200016a, ; uint32_t type_token_id
		i32 108; uint32_t java_name_index
	}, ; 706
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002a6, ; uint32_t type_token_id
		i32 268; uint32_t java_name_index
	}, ; 707
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 503; uint32_t java_name_index
	}, ; 708
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200035e, ; uint32_t type_token_id
		i32 361; uint32_t java_name_index
	}, ; 709
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000294, ; uint32_t type_token_id
		i32 260; uint32_t java_name_index
	}, ; 710
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 676; uint32_t java_name_index
	}, ; 711
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000b1, ; uint32_t type_token_id
		i32 0; uint32_t java_name_index
	}, ; 712
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 135; uint32_t java_name_index
	}, ; 713
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001e4, ; uint32_t type_token_id
		i32 182; uint32_t java_name_index
	}, ; 714
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000083, ; uint32_t type_token_id
		i32 1338; uint32_t java_name_index
	}, ; 715
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000b2, ; uint32_t type_token_id
		i32 1; uint32_t java_name_index
	}, ; 716
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000476, ; uint32_t type_token_id
		i32 535; uint32_t java_name_index
	}, ; 717
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000387, ; uint32_t type_token_id
		i32 920; uint32_t java_name_index
	}, ; 718
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000017, ; uint32_t type_token_id
		i32 1055; uint32_t java_name_index
	}, ; 719
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000e8, ; uint32_t type_token_id
		i32 1171; uint32_t java_name_index
	}, ; 720
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000024, ; uint32_t type_token_id
		i32 544; uint32_t java_name_index
	}, ; 721
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 1236; uint32_t java_name_index
	}, ; 722
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1124; uint32_t java_name_index
	}, ; 723
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1204; uint32_t java_name_index
	}, ; 724
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000451, ; uint32_t type_token_id
		i32 508; uint32_t java_name_index
	}, ; 725
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001e6, ; uint32_t type_token_id
		i32 763; uint32_t java_name_index
	}, ; 726
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 548; uint32_t java_name_index
	}, ; 727
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200040a, ; uint32_t type_token_id
		i32 463; uint32_t java_name_index
	}, ; 728
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000055, ; uint32_t type_token_id
		i32 1307; uint32_t java_name_index
	}, ; 729
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001c9, ; uint32_t type_token_id
		i32 742; uint32_t java_name_index
	}, ; 730
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000381, ; uint32_t type_token_id
		i32 911; uint32_t java_name_index
	}, ; 731
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1071; uint32_t java_name_index
	}, ; 732
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 962; uint32_t java_name_index
	}, ; 733
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200028e, ; uint32_t type_token_id
		i32 257; uint32_t java_name_index
	}, ; 734
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001cf, ; uint32_t type_token_id
		i32 747; uint32_t java_name_index
	}, ; 735
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000aa, ; uint32_t type_token_id
		i32 639; uint32_t java_name_index
	}, ; 736
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 11; uint32_t java_name_index
	}, ; 737
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000446, ; uint32_t type_token_id
		i32 497; uint32_t java_name_index
	}, ; 738
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000081, ; uint32_t type_token_id
		i32 1024; uint32_t java_name_index
	}, ; 739
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 15; uint32_t java_name_index
	}, ; 740
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 418; uint32_t java_name_index
	}, ; 741
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000079, ; uint32_t type_token_id
		i32 871; uint32_t java_name_index
	}, ; 742
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001dd, ; uint32_t type_token_id
		i32 758; uint32_t java_name_index
	}, ; 743
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000048, ; uint32_t type_token_id
		i32 1295; uint32_t java_name_index
	}, ; 744
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000078, ; uint32_t type_token_id
		i32 1123; uint32_t java_name_index
	}, ; 745
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200014b, ; uint32_t type_token_id
		i32 85; uint32_t java_name_index
	}, ; 746
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 833; uint32_t java_name_index
	}, ; 747
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 482; uint32_t java_name_index
	}, ; 748
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 618; uint32_t java_name_index
	}, ; 749
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000397, ; uint32_t type_token_id
		i32 396; uint32_t java_name_index
	}, ; 750
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1106; uint32_t java_name_index
	}, ; 751
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 1191; uint32_t java_name_index
	}, ; 752
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 701; uint32_t java_name_index
	}, ; 753
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000059, ; uint32_t type_token_id
		i32 1190; uint32_t java_name_index
	}, ; 754
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1033; uint32_t java_name_index
	}, ; 755
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000615, ; uint32_t type_token_id
		i32 907; uint32_t java_name_index
	}, ; 756
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000338, ; uint32_t type_token_id
		i32 879; uint32_t java_name_index
	}, ; 757
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x02000033, ; uint32_t type_token_id
		i32 842; uint32_t java_name_index
	}, ; 758
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000049, ; uint32_t type_token_id
		i32 1296; uint32_t java_name_index
	}, ; 759
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001b7, ; uint32_t type_token_id
		i32 737; uint32_t java_name_index
	}, ; 760
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200023a, ; uint32_t type_token_id
		i32 222; uint32_t java_name_index
	}, ; 761
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000ff, ; uint32_t type_token_id
		i32 44; uint32_t java_name_index
	}, ; 762
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x02000031, ; uint32_t type_token_id
		i32 1066; uint32_t java_name_index
	}, ; 763
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200027e, ; uint32_t type_token_id
		i32 251; uint32_t java_name_index
	}, ; 764
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 117; uint32_t java_name_index
	}, ; 765
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200039f, ; uint32_t type_token_id
		i32 936; uint32_t java_name_index
	}, ; 766
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000346, ; uint32_t type_token_id
		i32 785; uint32_t java_name_index
	}, ; 767
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1343; uint32_t java_name_index
	}, ; 768
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 926; uint32_t java_name_index
	}, ; 769
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000053, ; uint32_t type_token_id
		i32 1305; uint32_t java_name_index
	}, ; 770
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000c6, ; uint32_t type_token_id
		i32 1144; uint32_t java_name_index
	}, ; 771
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 837; uint32_t java_name_index
	}, ; 772
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002ff, ; uint32_t type_token_id
		i32 295; uint32_t java_name_index
	}, ; 773
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200033a, ; uint32_t type_token_id
		i32 784; uint32_t java_name_index
	}, ; 774
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000197, ; uint32_t type_token_id
		i32 131; uint32_t java_name_index
	}, ; 775
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 242; uint32_t java_name_index
	}, ; 776
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 1324; uint32_t java_name_index
	}, ; 777
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1250; uint32_t java_name_index
	}, ; 778
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000062, ; uint32_t type_token_id
		i32 1318; uint32_t java_name_index
	}, ; 779
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000457, ; uint32_t type_token_id
		i32 513; uint32_t java_name_index
	}, ; 780
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000bd, ; uint32_t type_token_id
		i32 712; uint32_t java_name_index
	}, ; 781
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 1094; uint32_t java_name_index
	}, ; 782
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000455, ; uint32_t type_token_id
		i32 511; uint32_t java_name_index
	}, ; 783
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000022, ; uint32_t type_token_id
		i32 806; uint32_t java_name_index
	}, ; 784
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000ef, ; uint32_t type_token_id
		i32 716; uint32_t java_name_index
	}, ; 785
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200013d, ; uint32_t type_token_id
		i32 76; uint32_t java_name_index
	}, ; 786
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000097, ; uint32_t type_token_id
		i32 875; uint32_t java_name_index
	}, ; 787
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 486; uint32_t java_name_index
	}, ; 788
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003b5, ; uint32_t type_token_id
		i32 412; uint32_t java_name_index
	}, ; 789
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003be, ; uint32_t type_token_id
		i32 414; uint32_t java_name_index
	}, ; 790
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001a5, ; uint32_t type_token_id
		i32 139; uint32_t java_name_index
	}, ; 791
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000190, ; uint32_t type_token_id
		i32 730; uint32_t java_name_index
	}, ; 792
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000354, ; uint32_t type_token_id
		i32 890; uint32_t java_name_index
	}, ; 793
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x02000038, ; uint32_t type_token_id
		i32 847; uint32_t java_name_index
	}, ; 794
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000325, ; uint32_t type_token_id
		i32 316; uint32_t java_name_index
	}, ; 795
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 687; uint32_t java_name_index
	}, ; 796
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 1138; uint32_t java_name_index
	}, ; 797
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000055, ; uint32_t type_token_id
		i32 576; uint32_t java_name_index
	}, ; 798
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 838; uint32_t java_name_index
	}, ; 799
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000471, ; uint32_t type_token_id
		i32 530; uint32_t java_name_index
	}, ; 800
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000377, ; uint32_t type_token_id
		i32 376; uint32_t java_name_index
	}, ; 801
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 572; uint32_t java_name_index
	}, ; 802
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 629; uint32_t java_name_index
	}, ; 803
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 1273; uint32_t java_name_index
	}, ; 804
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 83; uint32_t java_name_index
	}, ; 805
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000074, ; uint32_t type_token_id
		i32 1330; uint32_t java_name_index
	}, ; 806
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003c0, ; uint32_t type_token_id
		i32 955; uint32_t java_name_index
	}, ; 807
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 1333; uint32_t java_name_index
	}, ; 808
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 679; uint32_t java_name_index
	}, ; 809
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000ba, ; uint32_t type_token_id
		i32 1133; uint32_t java_name_index
	}, ; 810
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200044b, ; uint32_t type_token_id
		i32 502; uint32_t java_name_index
	}, ; 811
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000310, ; uint32_t type_token_id
		i32 301; uint32_t java_name_index
	}, ; 812
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 595; uint32_t java_name_index
	}, ; 813
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000004, ; uint32_t type_token_id
		i32 1049; uint32_t java_name_index
	}, ; 814
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 136; uint32_t java_name_index
	}, ; 815
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x02000018, ; uint32_t type_token_id
		i32 826; uint32_t java_name_index
	}, ; 816
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 542; uint32_t java_name_index
	}, ; 817
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000364, ; uint32_t type_token_id
		i32 365; uint32_t java_name_index
	}, ; 818
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000396, ; uint32_t type_token_id
		i32 395; uint32_t java_name_index
	}, ; 819
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002df, ; uint32_t type_token_id
		i32 287; uint32_t java_name_index
	}, ; 820
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000068, ; uint32_t type_token_id
		i32 584; uint32_t java_name_index
	}, ; 821
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003e3, ; uint32_t type_token_id
		i32 436; uint32_t java_name_index
	}, ; 822
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x02000030, ; uint32_t type_token_id
		i32 840; uint32_t java_name_index
	}, ; 823
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 830; uint32_t java_name_index
	}, ; 824
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000404, ; uint32_t type_token_id
		i32 458; uint32_t java_name_index
	}, ; 825
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001cb, ; uint32_t type_token_id
		i32 743; uint32_t java_name_index
	}, ; 826
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 168; uint32_t java_name_index
	}, ; 827
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000405, ; uint32_t type_token_id
		i32 459; uint32_t java_name_index
	}, ; 828
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000044, ; uint32_t type_token_id
		i32 566; uint32_t java_name_index
	}, ; 829
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1247; uint32_t java_name_index
	}, ; 830
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000004, ; uint32_t type_token_id
		i32 1257; uint32_t java_name_index
	}, ; 831
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 661; uint32_t java_name_index
	}, ; 832
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001c6, ; uint32_t type_token_id
		i32 739; uint32_t java_name_index
	}, ; 833
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1254; uint32_t java_name_index
	}, ; 834
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000de, ; uint32_t type_token_id
		i32 1161; uint32_t java_name_index
	}, ; 835
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 930; uint32_t java_name_index
	}, ; 836
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003a0, ; uint32_t type_token_id
		i32 399; uint32_t java_name_index
	}, ; 837
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 667; uint32_t java_name_index
	}, ; 838
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200029a, ; uint32_t type_token_id
		i32 263; uint32_t java_name_index
	}, ; 839
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 116; uint32_t java_name_index
	}, ; 840
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001e5, ; uint32_t type_token_id
		i32 183; uint32_t java_name_index
	}, ; 841
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 641; uint32_t java_name_index
	}, ; 842
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 836; uint32_t java_name_index
	}, ; 843
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 485; uint32_t java_name_index
	}, ; 844
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 112; uint32_t java_name_index
	}, ; 845
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1264; uint32_t java_name_index
	}, ; 846
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 88; uint32_t java_name_index
	}, ; 847
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000244, ; uint32_t type_token_id
		i32 227; uint32_t java_name_index
	}, ; 848
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000069, ; uint32_t type_token_id
		i32 1323; uint32_t java_name_index
	}, ; 849
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200034c, ; uint32_t type_token_id
		i32 885; uint32_t java_name_index
	}, ; 850
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003e6, ; uint32_t type_token_id
		i32 438; uint32_t java_name_index
	}, ; 851
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000332, ; uint32_t type_token_id
		i32 328; uint32_t java_name_index
	}, ; 852
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200018f, ; uint32_t type_token_id
		i32 729; uint32_t java_name_index
	}, ; 853
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000027, ; uint32_t type_token_id
		i32 1225; uint32_t java_name_index
	}, ; 854
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1248; uint32_t java_name_index
	}, ; 855
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000407, ; uint32_t type_token_id
		i32 461; uint32_t java_name_index
	}, ; 856
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000a4, ; uint32_t type_token_id
		i32 1356; uint32_t java_name_index
	}, ; 857
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200021b, ; uint32_t type_token_id
		i32 212; uint32_t java_name_index
	}, ; 858
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000035, ; uint32_t type_token_id
		i32 555; uint32_t java_name_index
	}, ; 859
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001c8, ; uint32_t type_token_id
		i32 741; uint32_t java_name_index
	}, ; 860
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200046e, ; uint32_t type_token_id
		i32 528; uint32_t java_name_index
	}, ; 861
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 706; uint32_t java_name_index
	}, ; 862
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001bc, ; uint32_t type_token_id
		i32 157; uint32_t java_name_index
	}, ; 863
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200030d, ; uint32_t type_token_id
		i32 298; uint32_t java_name_index
	}, ; 864
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003e1, ; uint32_t type_token_id
		i32 434; uint32_t java_name_index
	}, ; 865
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000620, ; uint32_t type_token_id
		i32 919; uint32_t java_name_index
	}, ; 866
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1232; uint32_t java_name_index
	}, ; 867
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 1353; uint32_t java_name_index
	}, ; 868
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 823; uint32_t java_name_index
	}, ; 869
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1087; uint32_t java_name_index
	}, ; 870
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000056, ; uint32_t type_token_id
		i32 1107; uint32_t java_name_index
	}, ; 871
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001ec, ; uint32_t type_token_id
		i32 188; uint32_t java_name_index
	}, ; 872
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 666; uint32_t java_name_index
	}, ; 873
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000156, ; uint32_t type_token_id
		i32 93; uint32_t java_name_index
	}, ; 874
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 193; uint32_t java_name_index
	}, ; 875
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 1003; uint32_t java_name_index
	}, ; 876
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000011, ; uint32_t type_token_id
		i32 794; uint32_t java_name_index
	}, ; 877
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000343, ; uint32_t type_token_id
		i32 343; uint32_t java_name_index
	}, ; 878
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 999; uint32_t java_name_index
	}, ; 879
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1258; uint32_t java_name_index
	}, ; 880
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1036; uint32_t java_name_index
	}, ; 881
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200037d, ; uint32_t type_token_id
		i32 905; uint32_t java_name_index
	}, ; 882
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000157, ; uint32_t type_token_id
		i32 94; uint32_t java_name_index
	}, ; 883
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000329, ; uint32_t type_token_id
		i32 320; uint32_t java_name_index
	}, ; 884
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000033, ; uint32_t type_token_id
		i32 553; uint32_t java_name_index
	}, ; 885
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 705; uint32_t java_name_index
	}, ; 886
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1294; uint32_t java_name_index
	}, ; 887
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 199; uint32_t java_name_index
	}, ; 888
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001b8, ; uint32_t type_token_id
		i32 153; uint32_t java_name_index
	}, ; 889
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000018, ; uint32_t type_token_id
		i32 673; uint32_t java_name_index
	}, ; 890
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000042, ; uint32_t type_token_id
		i32 990; uint32_t java_name_index
	}, ; 891
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 12; uint32_t java_name_index
	}, ; 892
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 1013; uint32_t java_name_index
	}, ; 893
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003e3, ; uint32_t type_token_id
		i32 983; uint32_t java_name_index
	}, ; 894
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 839; uint32_t java_name_index
	}, ; 895
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 675; uint32_t java_name_index
	}, ; 896
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000045, ; uint32_t type_token_id
		i32 588; uint32_t java_name_index
	}, ; 897
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000029, ; uint32_t type_token_id
		i32 1272; uint32_t java_name_index
	}, ; 898
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1023; uint32_t java_name_index
	}, ; 899
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200039d, ; uint32_t type_token_id
		i32 934; uint32_t java_name_index
	}, ; 900
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 1203; uint32_t java_name_index
	}, ; 901
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000410, ; uint32_t type_token_id
		i32 467; uint32_t java_name_index
	}, ; 902
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 386; uint32_t java_name_index
	}, ; 903
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1095; uint32_t java_name_index
	}, ; 904
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020003a4, ; uint32_t type_token_id
		i32 790; uint32_t java_name_index
	}, ; 905
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000121, ; uint32_t type_token_id
		i32 64; uint32_t java_name_index
	}, ; 906
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000096, ; uint32_t type_token_id
		i32 874; uint32_t java_name_index
	}, ; 907
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200037f, ; uint32_t type_token_id
		i32 909; uint32_t java_name_index
	}, ; 908
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x02000018, ; uint32_t type_token_id
		i32 665; uint32_t java_name_index
	}, ; 909
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003e4, ; uint32_t type_token_id
		i32 437; uint32_t java_name_index
	}, ; 910
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000328, ; uint32_t type_token_id
		i32 319; uint32_t java_name_index
	}, ; 911
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 928; uint32_t java_name_index
	}, ; 912
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 1104; uint32_t java_name_index
	}, ; 913
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 119; uint32_t java_name_index
	}, ; 914
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 696; uint32_t java_name_index
	}, ; 915
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 1040; uint32_t java_name_index
	}, ; 916
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 704; uint32_t java_name_index
	}, ; 917
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001ac, ; uint32_t type_token_id
		i32 736; uint32_t java_name_index
	}, ; 918
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003cc, ; uint32_t type_token_id
		i32 422; uint32_t java_name_index
	}, ; 919
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000d6, ; uint32_t type_token_id
		i32 19; uint32_t java_name_index
	}, ; 920
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 617; uint32_t java_name_index
	}, ; 921
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 1048; uint32_t java_name_index
	}, ; 922
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1212; uint32_t java_name_index
	}, ; 923
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000453, ; uint32_t type_token_id
		i32 510; uint32_t java_name_index
	}, ; 924
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200030a, ; uint32_t type_token_id
		i32 296; uint32_t java_name_index
	}, ; 925
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000334, ; uint32_t type_token_id
		i32 330; uint32_t java_name_index
	}, ; 926
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000315, ; uint32_t type_token_id
		i32 303; uint32_t java_name_index
	}, ; 927
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000062, ; uint32_t type_token_id
		i32 1196; uint32_t java_name_index
	}, ; 928
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000071, ; uint32_t type_token_id
		i32 1017; uint32_t java_name_index
	}, ; 929
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000466, ; uint32_t type_token_id
		i32 521; uint32_t java_name_index
	}, ; 930
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000035, ; uint32_t type_token_id
		i32 859; uint32_t java_name_index
	}, ; 931
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003dd, ; uint32_t type_token_id
		i32 431; uint32_t java_name_index
	}, ; 932
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 1117; uint32_t java_name_index
	}, ; 933
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001fa, ; uint32_t type_token_id
		i32 773; uint32_t java_name_index
	}, ; 934
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 861; uint32_t java_name_index
	}, ; 935
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 604; uint32_t java_name_index
	}, ; 936
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x02000031, ; uint32_t type_token_id
		i32 841; uint32_t java_name_index
	}, ; 937
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x02000012, ; uint32_t type_token_id
		i32 659; uint32_t java_name_index
	}, ; 938
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000ea, ; uint32_t type_token_id
		i32 1173; uint32_t java_name_index
	}, ; 939
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000046, ; uint32_t type_token_id
		i32 589; uint32_t java_name_index
	}, ; 940
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000037, ; uint32_t type_token_id
		i32 985; uint32_t java_name_index
	}, ; 941
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000c6, ; uint32_t type_token_id
		i32 1382; uint32_t java_name_index
	}, ; 942
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003fd, ; uint32_t type_token_id
		i32 454; uint32_t java_name_index
	}, ; 943
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000030, ; uint32_t type_token_id
		i32 697; uint32_t java_name_index
	}, ; 944
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000048, ; uint32_t type_token_id
		i32 591; uint32_t java_name_index
	}, ; 945
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000275, ; uint32_t type_token_id
		i32 249; uint32_t java_name_index
	}, ; 946
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200044d, ; uint32_t type_token_id
		i32 504; uint32_t java_name_index
	}, ; 947
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000087, ; uint32_t type_token_id
		i32 1028; uint32_t java_name_index
	}, ; 948
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x02000023, ; uint32_t type_token_id
		i32 672; uint32_t java_name_index
	}, ; 949
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200044a, ; uint32_t type_token_id
		i32 501; uint32_t java_name_index
	}, ; 950
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 561; uint32_t java_name_index
	}, ; 951
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 558; uint32_t java_name_index
	}, ; 952
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 279; uint32_t java_name_index
	}, ; 953
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000046, ; uint32_t type_token_id
		i32 567; uint32_t java_name_index
	}, ; 954
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 1336; uint32_t java_name_index
	}, ; 955
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1259; uint32_t java_name_index
	}, ; 956
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001fd, ; uint32_t type_token_id
		i32 774; uint32_t java_name_index
	}, ; 957
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000478, ; uint32_t type_token_id
		i32 536; uint32_t java_name_index
	}, ; 958
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 1202; uint32_t java_name_index
	}, ; 959
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200038a, ; uint32_t type_token_id
		i32 387; uint32_t java_name_index
	}, ; 960
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000040, ; uint32_t type_token_id
		i32 868; uint32_t java_name_index
	}, ; 961
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 669; uint32_t java_name_index
	}, ; 962
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000084, ; uint32_t type_token_id
		i32 1026; uint32_t java_name_index
	}, ; 963
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1380; uint32_t java_name_index
	}, ; 964
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000fa, ; uint32_t type_token_id
		i32 40; uint32_t java_name_index
	}, ; 965
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x02000010, ; uint32_t type_token_id
		i32 848; uint32_t java_name_index
	}, ; 966
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001fb, ; uint32_t type_token_id
		i32 194; uint32_t java_name_index
	}, ; 967
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000443, ; uint32_t type_token_id
		i32 494; uint32_t java_name_index
	}, ; 968
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000167, ; uint32_t type_token_id
		i32 105; uint32_t java_name_index
	}, ; 969
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000337, ; uint32_t type_token_id
		i32 333; uint32_t java_name_index
	}, ; 970
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 379; uint32_t java_name_index
	}, ; 971
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x02000016, ; uint32_t type_token_id
		i32 1289; uint32_t java_name_index
	}, ; 972
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 3; uint32_t java_name_index
	}, ; 973
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200021f, ; uint32_t type_token_id
		i32 214; uint32_t java_name_index
	}, ; 974
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 599; uint32_t java_name_index
	}, ; 975
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001d2, ; uint32_t type_token_id
		i32 750; uint32_t java_name_index
	}, ; 976
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000324, ; uint32_t type_token_id
		i32 315; uint32_t java_name_index
	}, ; 977
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 817; uint32_t java_name_index
	}, ; 978
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002a4, ; uint32_t type_token_id
		i32 266; uint32_t java_name_index
	}, ; 979
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 24; uint32_t java_name_index
	}, ; 980
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 1291; uint32_t java_name_index
	}, ; 981
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200010c, ; uint32_t type_token_id
		i32 53; uint32_t java_name_index
	}, ; 982
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 1352; uint32_t java_name_index
	}, ; 983
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1122; uint32_t java_name_index
	}, ; 984
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000036, ; uint32_t type_token_id
		i32 556; uint32_t java_name_index
	}, ; 985
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index
		i32 u0x02000004, ; uint32_t type_token_id
		i32 678; uint32_t java_name_index
	}, ; 986
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000195, ; uint32_t type_token_id
		i32 129; uint32_t java_name_index
	}, ; 987
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000042, ; uint32_t type_token_id
		i32 586; uint32_t java_name_index
	}, ; 988
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000213, ; uint32_t type_token_id
		i32 208; uint32_t java_name_index
	}, ; 989
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000390, ; uint32_t type_token_id
		i32 391; uint32_t java_name_index
	}, ; 990
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 713; uint32_t java_name_index
	}, ; 991
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 857; uint32_t java_name_index
	}, ; 992
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000193, ; uint32_t type_token_id
		i32 732; uint32_t java_name_index
	}, ; 993
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003cd, ; uint32_t type_token_id
		i32 960; uint32_t java_name_index
	}, ; 994
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200034b, ; uint32_t type_token_id
		i32 884; uint32_t java_name_index
	}, ; 995
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000017, ; uint32_t type_token_id
		i32 1288; uint32_t java_name_index
	}, ; 996
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000237, ; uint32_t type_token_id
		i32 220; uint32_t java_name_index
	}, ; 997
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000204, ; uint32_t type_token_id
		i32 200; uint32_t java_name_index
	}, ; 998
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1105; uint32_t java_name_index
	}, ; 999
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000191, ; uint32_t type_token_id
		i32 731; uint32_t java_name_index
	}, ; 1000
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001fc, ; uint32_t type_token_id
		i32 195; uint32_t java_name_index
	}, ; 1001
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020005f9, ; uint32_t type_token_id
		i32 882; uint32_t java_name_index
	}, ; 1002
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020006b7, ; uint32_t type_token_id
		i32 896; uint32_t java_name_index
	}, ; 1003
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 646; uint32_t java_name_index
	}, ; 1004
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000e1, ; uint32_t type_token_id
		i32 1164; uint32_t java_name_index
	}, ; 1005
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000083, ; uint32_t type_token_id
		i32 620; uint32_t java_name_index
	}, ; 1006
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 14; uint32_t java_name_index
	}, ; 1007
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000dd, ; uint32_t type_token_id
		i32 1160; uint32_t java_name_index
	}, ; 1008
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x02000016, ; uint32_t type_token_id
		i32 663; uint32_t java_name_index
	}, ; 1009
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000d7, ; uint32_t type_token_id
		i32 1155; uint32_t java_name_index
	}, ; 1010
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000fe, ; uint32_t type_token_id
		i32 43; uint32_t java_name_index
	}, ; 1011
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000020, ; uint32_t type_token_id
		i32 1266; uint32_t java_name_index
	}, ; 1012
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 1131; uint32_t java_name_index
	}, ; 1013
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200012f, ; uint32_t type_token_id
		i32 69; uint32_t java_name_index
	}, ; 1014
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001d1, ; uint32_t type_token_id
		i32 171; uint32_t java_name_index
	}, ; 1015
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200018a, ; uint32_t type_token_id
		i32 122; uint32_t java_name_index
	}, ; 1016
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200015f, ; uint32_t type_token_id
		i32 100; uint32_t java_name_index
	}, ; 1017
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000f4, ; uint32_t type_token_id
		i32 36; uint32_t java_name_index
	}, ; 1018
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000051, ; uint32_t type_token_id
		i32 1184; uint32_t java_name_index
	}, ; 1019
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 872; uint32_t java_name_index
	}, ; 1020
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000bc, ; uint32_t type_token_id
		i32 1374; uint32_t java_name_index
	}, ; 1021
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000ed, ; uint32_t type_token_id
		i32 1176; uint32_t java_name_index
	}, ; 1022
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 1327; uint32_t java_name_index
	}, ; 1023
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 852; uint32_t java_name_index
	}, ; 1024
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000048, ; uint32_t type_token_id
		i32 1100; uint32_t java_name_index
	}, ; 1025
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000125, ; uint32_t type_token_id
		i32 66; uint32_t java_name_index
	}, ; 1026
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200044f, ; uint32_t type_token_id
		i32 506; uint32_t java_name_index
	}, ; 1027
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000320, ; uint32_t type_token_id
		i32 311; uint32_t java_name_index
	}, ; 1028
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 1141; uint32_t java_name_index
	}, ; 1029
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000d3, ; uint32_t type_token_id
		i32 1151; uint32_t java_name_index
	}, ; 1030
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000e9, ; uint32_t type_token_id
		i32 1172; uint32_t java_name_index
	}, ; 1031
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 812; uint32_t java_name_index
	}, ; 1032
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 89; uint32_t java_name_index
	}, ; 1033
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 835; uint32_t java_name_index
	}, ; 1034
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000448, ; uint32_t type_token_id
		i32 499; uint32_t java_name_index
	}, ; 1035
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000047, ; uint32_t type_token_id
		i32 590; uint32_t java_name_index
	}, ; 1036
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000103, ; uint32_t type_token_id
		i32 48; uint32_t java_name_index
	}, ; 1037
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001de, ; uint32_t type_token_id
		i32 179; uint32_t java_name_index
	}, ; 1038
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 1378; uint32_t java_name_index
	}, ; 1039
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200063e, ; uint32_t type_token_id
		i32 973; uint32_t java_name_index
	}, ; 1040
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x02000010, ; uint32_t type_token_id
		i32 657; uint32_t java_name_index
	}, ; 1041
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002b6, ; uint32_t type_token_id
		i32 275; uint32_t java_name_index
	}, ; 1042
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000365, ; uint32_t type_token_id
		i32 366; uint32_t java_name_index
	}, ; 1043
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200030e, ; uint32_t type_token_id
		i32 299; uint32_t java_name_index
	}, ; 1044
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200015b, ; uint32_t type_token_id
		i32 97; uint32_t java_name_index
	}, ; 1045
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 560; uint32_t java_name_index
	}, ; 1046
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 637; uint32_t java_name_index
	}, ; 1047
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 240; uint32_t java_name_index
	}, ; 1048
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000456, ; uint32_t type_token_id
		i32 512; uint32_t java_name_index
	}, ; 1049
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 244; uint32_t java_name_index
	}, ; 1050
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 631; uint32_t java_name_index
	}, ; 1051
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000d5, ; uint32_t type_token_id
		i32 1153; uint32_t java_name_index
	}, ; 1052
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000d9, ; uint32_t type_token_id
		i32 21; uint32_t java_name_index
	}, ; 1053
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 1240; uint32_t java_name_index
	}, ; 1054
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200045b, ; uint32_t type_token_id
		i32 516; uint32_t java_name_index
	}, ; 1055
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1263; uint32_t java_name_index
	}, ; 1056
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 822; uint32_t java_name_index
	}, ; 1057
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000344, ; uint32_t type_token_id
		i32 344; uint32_t java_name_index
	}, ; 1058
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001d4, ; uint32_t type_token_id
		i32 752; uint32_t java_name_index
	}, ; 1059
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1267; uint32_t java_name_index
	}, ; 1060
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 824; uint32_t java_name_index
	}, ; 1061
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 52; uint32_t java_name_index
	}, ; 1062
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000044, ; uint32_t type_token_id
		i32 992; uint32_t java_name_index
	}, ; 1063
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000b0, ; uint32_t type_token_id
		i32 643; uint32_t java_name_index
	}, ; 1064
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200018a, ; uint32_t type_token_id
		i32 724; uint32_t java_name_index
	}, ; 1065
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 519; uint32_t java_name_index
	}, ; 1066
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index
		i32 u0x02000079, ; uint32_t type_token_id
		i32 699; uint32_t java_name_index
	}, ; 1067
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000132, ; uint32_t type_token_id
		i32 71; uint32_t java_name_index
	}, ; 1068
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000008, ; uint32_t type_token_id
		i32 1255; uint32_t java_name_index
	}, ; 1069
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200011f, ; uint32_t type_token_id
		i32 62; uint32_t java_name_index
	}, ; 1070
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000383, ; uint32_t type_token_id
		i32 913; uint32_t java_name_index
	}, ; 1071
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000335, ; uint32_t type_token_id
		i32 783; uint32_t java_name_index
	}, ; 1072
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 478; uint32_t java_name_index
	}, ; 1073
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000114, ; uint32_t type_token_id
		i32 57; uint32_t java_name_index
	}, ; 1074
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000644, ; uint32_t type_token_id
		i32 979; uint32_t java_name_index
	}, ; 1075
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 802; uint32_t java_name_index
	}, ; 1076
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000040, ; uint32_t type_token_id
		i32 563; uint32_t java_name_index
	}, ; 1077
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002c6, ; uint32_t type_token_id
		i32 286; uint32_t java_name_index
	}, ; 1078
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 1010; uint32_t java_name_index
	}, ; 1079
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200038a, ; uint32_t type_token_id
		i32 922; uint32_t java_name_index
	}, ; 1080
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000621, ; uint32_t type_token_id
		i32 921; uint32_t java_name_index
	}, ; 1081
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000289, ; uint32_t type_token_id
		i32 255; uint32_t java_name_index
	}, ; 1082
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000046, ; uint32_t type_token_id
		i32 994; uint32_t java_name_index
	}, ; 1083
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000066, ; uint32_t type_token_id
		i32 606; uint32_t java_name_index
	}, ; 1084
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000160, ; uint32_t type_token_id
		i32 101; uint32_t java_name_index
	}, ; 1085
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000440, ; uint32_t type_token_id
		i32 492; uint32_t java_name_index
	}, ; 1086
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 579; uint32_t java_name_index
	}, ; 1087
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002e4, ; uint32_t type_token_id
		i32 289; uint32_t java_name_index
	}, ; 1088
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003c0, ; uint32_t type_token_id
		i32 416; uint32_t java_name_index
	}, ; 1089
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 1140; uint32_t java_name_index
	}, ; 1090
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 201; uint32_t java_name_index
	}, ; 1091
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000012, ; uint32_t type_token_id
		i32 795; uint32_t java_name_index
	}, ; 1092
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003c3, ; uint32_t type_token_id
		i32 958; uint32_t java_name_index
	}, ; 1093
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000024, ; uint32_t type_token_id
		i32 1222; uint32_t java_name_index
	}, ; 1094
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 1218; uint32_t java_name_index
	}, ; 1095
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1118; uint32_t java_name_index
	}, ; 1096
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003ad, ; uint32_t type_token_id
		i32 407; uint32_t java_name_index
	}, ; 1097
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200029f, ; uint32_t type_token_id
		i32 264; uint32_t java_name_index
	}, ; 1098
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000070, ; uint32_t type_token_id
		i32 1119; uint32_t java_name_index
	}, ; 1099
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003a2, ; uint32_t type_token_id
		i32 401; uint32_t java_name_index
	}, ; 1100
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001db, ; uint32_t type_token_id
		i32 177; uint32_t java_name_index
	}, ; 1101
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1126; uint32_t java_name_index
	}, ; 1102
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1182; uint32_t java_name_index
	}, ; 1103
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 238; uint32_t java_name_index
	}, ; 1104
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001ff, ; uint32_t type_token_id
		i32 198; uint32_t java_name_index
	}, ; 1105
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index
		i32 u0x02000003, ; uint32_t type_token_id
		i32 677; uint32_t java_name_index
	}, ; 1106
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000df, ; uint32_t type_token_id
		i32 1162; uint32_t java_name_index
	}, ; 1107
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001e7, ; uint32_t type_token_id
		i32 764; uint32_t java_name_index
	}, ; 1108
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200033e, ; uint32_t type_token_id
		i32 339; uint32_t java_name_index
	}, ; 1109
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000180, ; uint32_t type_token_id
		i32 718; uint32_t java_name_index
	}, ; 1110
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1287; uint32_t java_name_index
	}, ; 1111
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000030, ; uint32_t type_token_id
		i32 1231; uint32_t java_name_index
	}, ; 1112
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000059, ; uint32_t type_token_id
		i32 1007; uint32_t java_name_index
	}, ; 1113
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003ec, ; uint32_t type_token_id
		i32 443; uint32_t java_name_index
	}, ; 1114
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000217, ; uint32_t type_token_id
		i32 210; uint32_t java_name_index
	}, ; 1115
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200033c, ; uint32_t type_token_id
		i32 338; uint32_t java_name_index
	}, ; 1116
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000db, ; uint32_t type_token_id
		i32 22; uint32_t java_name_index
	}, ; 1117
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 543; uint32_t java_name_index
	}, ; 1118
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000449, ; uint32_t type_token_id
		i32 500; uint32_t java_name_index
	}, ; 1119
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 825; uint32_t java_name_index
	}, ; 1120
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003d0, ; uint32_t type_token_id
		i32 423; uint32_t java_name_index
	}, ; 1121
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1097; uint32_t java_name_index
	}, ; 1122
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200061f, ; uint32_t type_token_id
		i32 918; uint32_t java_name_index
	}, ; 1123
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000f7, ; uint32_t type_token_id
		i32 38; uint32_t java_name_index
	}, ; 1124
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001b7, ; uint32_t type_token_id
		i32 152; uint32_t java_name_index
	}, ; 1125
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003b4, ; uint32_t type_token_id
		i32 411; uint32_t java_name_index
	}, ; 1126
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001d9, ; uint32_t type_token_id
		i32 755; uint32_t java_name_index
	}, ; 1127
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1293; uint32_t java_name_index
	}, ; 1128
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000045, ; uint32_t type_token_id
		i32 863; uint32_t java_name_index
	}, ; 1129
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index
		i32 u0x02000007, ; uint32_t type_token_id
		i32 680; uint32_t java_name_index
	}, ; 1130
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000351, ; uint32_t type_token_id
		i32 353; uint32_t java_name_index
	}, ; 1131
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003ab, ; uint32_t type_token_id
		i32 405; uint32_t java_name_index
	}, ; 1132
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 1032; uint32_t java_name_index
	}, ; 1133
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1079; uint32_t java_name_index
	}, ; 1134
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003d5, ; uint32_t type_token_id
		i32 426; uint32_t java_name_index
	}, ; 1135
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000060, ; uint32_t type_token_id
		i32 1111; uint32_t java_name_index
	}, ; 1136
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x02000020, ; uint32_t type_token_id
		i32 670; uint32_t java_name_index
	}, ; 1137
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001be, ; uint32_t type_token_id
		i32 159; uint32_t java_name_index
	}, ; 1138
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200013e, ; uint32_t type_token_id
		i32 77; uint32_t java_name_index
	}, ; 1139
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000026, ; uint32_t type_token_id
		i32 809; uint32_t java_name_index
	}, ; 1140
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000d2, ; uint32_t type_token_id
		i32 1150; uint32_t java_name_index
	}, ; 1141
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000066, ; uint32_t type_token_id
		i32 1321; uint32_t java_name_index
	}, ; 1142
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000414, ; uint32_t type_token_id
		i32 470; uint32_t java_name_index
	}, ; 1143
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 1292; uint32_t java_name_index
	}, ; 1144
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 668; uint32_t java_name_index
	}, ; 1145
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200034f, ; uint32_t type_token_id
		i32 351; uint32_t java_name_index
	}, ; 1146
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000163, ; uint32_t type_token_id
		i32 102; uint32_t java_name_index
	}, ; 1147
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002a5, ; uint32_t type_token_id
		i32 267; uint32_t java_name_index
	}, ; 1148
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200061c, ; uint32_t type_token_id
		i32 916; uint32_t java_name_index
	}, ; 1149
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1068; uint32_t java_name_index
	}, ; 1150
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 683; uint32_t java_name_index
	}, ; 1151
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000057, ; uint32_t type_token_id
		i32 578; uint32_t java_name_index
	}, ; 1152
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 489; uint32_t java_name_index
	}, ; 1153
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x02000036, ; uint32_t type_token_id
		i32 845; uint32_t java_name_index
	}, ; 1154
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200039b, ; uint32_t type_token_id
		i32 933; uint32_t java_name_index
	}, ; 1155
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000bd, ; uint32_t type_token_id
		i32 1375; uint32_t java_name_index
	}, ; 1156
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 1243; uint32_t java_name_index
	}, ; 1157
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001fd, ; uint32_t type_token_id
		i32 196; uint32_t java_name_index
	}, ; 1158
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 989; uint32_t java_name_index
	}, ; 1159
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1237; uint32_t java_name_index
	}, ; 1160
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1269; uint32_t java_name_index
	}, ; 1161
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000359, ; uint32_t type_token_id
		i32 359; uint32_t java_name_index
	}, ; 1162
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003ce, ; uint32_t type_token_id
		i32 961; uint32_t java_name_index
	}, ; 1163
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000382, ; uint32_t type_token_id
		i32 912; uint32_t java_name_index
	}, ; 1164
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200018d, ; uint32_t type_token_id
		i32 727; uint32_t java_name_index
	}, ; 1165
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1093; uint32_t java_name_index
	}, ; 1166
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003b1, ; uint32_t type_token_id
		i32 941; uint32_t java_name_index
	}, ; 1167
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000369, ; uint32_t type_token_id
		i32 369; uint32_t java_name_index
	}, ; 1168
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1300; uint32_t java_name_index
	}, ; 1169
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1128; uint32_t java_name_index
	}, ; 1170
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003d4, ; uint32_t type_token_id
		i32 425; uint32_t java_name_index
	}, ; 1171
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x020000a7, ; uint32_t type_token_id
		i32 1177; uint32_t java_name_index
	}, ; 1172
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 616; uint32_t java_name_index
	}, ; 1173
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000186, ; uint32_t type_token_id
		i32 721; uint32_t java_name_index
	}, ; 1174
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003bd, ; uint32_t type_token_id
		i32 952; uint32_t java_name_index
	}, ; 1175
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 816; uint32_t java_name_index
	}, ; 1176
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000474, ; uint32_t type_token_id
		i32 533; uint32_t java_name_index
	}, ; 1177
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 634; uint32_t java_name_index
	}, ; 1178
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 1211; uint32_t java_name_index
	}, ; 1179
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 377; uint32_t java_name_index
	}, ; 1180
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 13; uint32_t java_name_index
	}, ; 1181
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000036, ; uint32_t type_token_id
		i32 984; uint32_t java_name_index
	}, ; 1182
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000352, ; uint32_t type_token_id
		i32 889; uint32_t java_name_index
	}, ; 1183
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1112; uint32_t java_name_index
	}, ; 1184
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000063, ; uint32_t type_token_id
		i32 1319; uint32_t java_name_index
	}, ; 1185
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001d5, ; uint32_t type_token_id
		i32 174; uint32_t java_name_index
	}, ; 1186
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000326, ; uint32_t type_token_id
		i32 317; uint32_t java_name_index
	}, ; 1187
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 570; uint32_t java_name_index
	}, ; 1188
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002ba, ; uint32_t type_token_id
		i32 278; uint32_t java_name_index
	}, ; 1189
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 855; uint32_t java_name_index
	}, ; 1190
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000614, ; uint32_t type_token_id
		i32 906; uint32_t java_name_index
	}, ; 1191
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000043, ; uint32_t type_token_id
		i32 991; uint32_t java_name_index
	}, ; 1192
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 234; uint32_t java_name_index
	}, ; 1193
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 481; uint32_t java_name_index
	}, ; 1194
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200046d, ; uint32_t type_token_id
		i32 527; uint32_t java_name_index
	}, ; 1195
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000ec, ; uint32_t type_token_id
		i32 31; uint32_t java_name_index
	}, ; 1196
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1063; uint32_t java_name_index
	}, ; 1197
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 644; uint32_t java_name_index
	}, ; 1198
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 169; uint32_t java_name_index
	}, ; 1199
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 1227; uint32_t java_name_index
	}, ; 1200
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 549; uint32_t java_name_index
	}, ; 1201
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000085, ; uint32_t type_token_id
		i32 1215; uint32_t java_name_index
	}, ; 1202
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002a1, ; uint32_t type_token_id
		i32 265; uint32_t java_name_index
	}, ; 1203
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000638, ; uint32_t type_token_id
		i32 966; uint32_t java_name_index
	}, ; 1204
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000400, ; uint32_t type_token_id
		i32 456; uint32_t java_name_index
	}, ; 1205
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1029; uint32_t java_name_index
	}, ; 1206
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 82; uint32_t java_name_index
	}, ; 1207
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000228, ; uint32_t type_token_id
		i32 778; uint32_t java_name_index
	}, ; 1208
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x02000034, ; uint32_t type_token_id
		i32 843; uint32_t java_name_index
	}, ; 1209
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 25; uint32_t java_name_index
	}, ; 1210
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003f4, ; uint32_t type_token_id
		i32 448; uint32_t java_name_index
	}, ; 1211
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1246; uint32_t java_name_index
	}, ; 1212
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000370, ; uint32_t type_token_id
		i32 372; uint32_t java_name_index
	}, ; 1213
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200034a, ; uint32_t type_token_id
		i32 883; uint32_t java_name_index
	}, ; 1214
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000009, ; uint32_t type_token_id
		i32 702; uint32_t java_name_index
	}, ; 1215
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000168, ; uint32_t type_token_id
		i32 106; uint32_t java_name_index
	}, ; 1216
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 490; uint32_t java_name_index
	}, ; 1217
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 483; uint32_t java_name_index
	}, ; 1218
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000058, ; uint32_t type_token_id
		i32 602; uint32_t java_name_index
	}, ; 1219
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001ab, ; uint32_t type_token_id
		i32 145; uint32_t java_name_index
	}, ; 1220
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000028, ; uint32_t type_token_id
		i32 1271; uint32_t java_name_index
	}, ; 1221
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000386, ; uint32_t type_token_id
		i32 917; uint32_t java_name_index
	}, ; 1222
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200018e, ; uint32_t type_token_id
		i32 728; uint32_t java_name_index
	}, ; 1223
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 827; uint32_t java_name_index
	}, ; 1224
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200014c, ; uint32_t type_token_id
		i32 86; uint32_t java_name_index
	}, ; 1225
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 115; uint32_t java_name_index
	}, ; 1226
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000102, ; uint32_t type_token_id
		i32 47; uint32_t java_name_index
	}, ; 1227
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003f5, ; uint32_t type_token_id
		i32 449; uint32_t java_name_index
	}, ; 1228
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000091, ; uint32_t type_token_id
		i32 866; uint32_t java_name_index
	}, ; 1229
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 541; uint32_t java_name_index
	}, ; 1230
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000104, ; uint32_t type_token_id
		i32 49; uint32_t java_name_index
	}, ; 1231
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 58; uint32_t java_name_index
	}, ; 1232
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1279; uint32_t java_name_index
	}, ; 1233
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 221; uint32_t java_name_index
	}, ; 1234
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 1000; uint32_t java_name_index
	}, ; 1235
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1120; uint32_t java_name_index
	}, ; 1236
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 1030; uint32_t java_name_index
	}, ; 1237
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1043; uint32_t java_name_index
	}, ; 1238
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200039a, ; uint32_t type_token_id
		i32 397; uint32_t java_name_index
	}, ; 1239
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 700; uint32_t java_name_index
	}, ; 1240
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200038d, ; uint32_t type_token_id
		i32 388; uint32_t java_name_index
	}, ; 1241
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 624; uint32_t java_name_index
	}, ; 1242
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 203; uint32_t java_name_index
	}, ; 1243
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 378; uint32_t java_name_index
	}, ; 1244
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000067, ; uint32_t type_token_id
		i32 607; uint32_t java_name_index
	}, ; 1245
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1056; uint32_t java_name_index
	}, ; 1246
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1059; uint32_t java_name_index
	}, ; 1247
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000a6, ; uint32_t type_token_id
		i32 1358; uint32_t java_name_index
	}, ; 1248
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 820; uint32_t java_name_index
	}, ; 1249
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000079, ; uint32_t type_token_id
		i32 615; uint32_t java_name_index
	}, ; 1250
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 213; uint32_t java_name_index
	}, ; 1251
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000025, ; uint32_t type_token_id
		i32 808; uint32_t java_name_index
	}, ; 1252
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200013b, ; uint32_t type_token_id
		i32 74; uint32_t java_name_index
	}, ; 1253
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200038e, ; uint32_t type_token_id
		i32 389; uint32_t java_name_index
	}, ; 1254
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 611; uint32_t java_name_index
	}, ; 1255
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000339, ; uint32_t type_token_id
		i32 880; uint32_t java_name_index
	}, ; 1256
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 710; uint32_t java_name_index
	}, ; 1257
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1110; uint32_t java_name_index
	}, ; 1258
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1262; uint32_t java_name_index
	}, ; 1259
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 219; uint32_t java_name_index
	}, ; 1260
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000088, ; uint32_t type_token_id
		i32 873; uint32_t java_name_index
	}, ; 1261
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x02000011, ; uint32_t type_token_id
		i32 821; uint32_t java_name_index
	}, ; 1262
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200044e, ; uint32_t type_token_id
		i32 505; uint32_t java_name_index
	}, ; 1263
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 651; uint32_t java_name_index
	}, ; 1264
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000006, ; uint32_t type_token_id
		i32 1051; uint32_t java_name_index
	}, ; 1265
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000070, ; uint32_t type_token_id
		i32 1016; uint32_t java_name_index
	}, ; 1266
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 1384; uint32_t java_name_index
	}, ; 1267
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000142, ; uint32_t type_token_id
		i32 80; uint32_t java_name_index
	}, ; 1268
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1069; uint32_t java_name_index
	}, ; 1269
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 674; uint32_t java_name_index
	}, ; 1270
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003fe, ; uint32_t type_token_id
		i32 455; uint32_t java_name_index
	}, ; 1271
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000023, ; uint32_t type_token_id
		i32 1221; uint32_t java_name_index
	}, ; 1272
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 385; uint32_t java_name_index
	}, ; 1273
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000402, ; uint32_t type_token_id
		i32 457; uint32_t java_name_index
	}, ; 1274
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000038, ; uint32_t type_token_id
		i32 557; uint32_t java_name_index
	}, ; 1275
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1108; uint32_t java_name_index
	}, ; 1276
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 10; uint32_t java_name_index
	}, ; 1277
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 474; uint32_t java_name_index
	}, ; 1278
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1041; uint32_t java_name_index
	}, ; 1279
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 592; uint32_t java_name_index
	}, ; 1280
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003de, ; uint32_t type_token_id
		i32 977; uint32_t java_name_index
	}, ; 1281
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003b5, ; uint32_t type_token_id
		i32 944; uint32_t java_name_index
	}, ; 1282
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000406, ; uint32_t type_token_id
		i32 460; uint32_t java_name_index
	}, ; 1283
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200020d, ; uint32_t type_token_id
		i32 205; uint32_t java_name_index
	}, ; 1284
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000008, ; uint32_t type_token_id
		i32 655; uint32_t java_name_index
	}, ; 1285
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000412, ; uint32_t type_token_id
		i32 468; uint32_t java_name_index
	}, ; 1286
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000152, ; uint32_t type_token_id
		i32 90; uint32_t java_name_index
	}, ; 1287
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 719; uint32_t java_name_index
	}, ; 1288
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000056, ; uint32_t type_token_id
		i32 1308; uint32_t java_name_index
	}, ; 1289
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000074, ; uint32_t type_token_id
		i32 1206; uint32_t java_name_index
	}, ; 1290
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 462; uint32_t java_name_index
	}, ; 1291
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 987; uint32_t java_name_index
	}, ; 1292
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x020000ec, ; uint32_t type_token_id
		i32 1175; uint32_t java_name_index
	}, ; 1293
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 647; uint32_t java_name_index
	}, ; 1294
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003b8, ; uint32_t type_token_id
		i32 947; uint32_t java_name_index
	}, ; 1295
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 571; uint32_t java_name_index
	}, ; 1296
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000468, ; uint32_t type_token_id
		i32 523; uint32_t java_name_index
	}, ; 1297
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000007, ; uint32_t type_token_id
		i32 1052; uint32_t java_name_index
	}, ; 1298
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 537; uint32_t java_name_index
	}, ; 1299
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200033b, ; uint32_t type_token_id
		i32 337; uint32_t java_name_index
	}, ; 1300
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000028, ; uint32_t type_token_id
		i32 1047; uint32_t java_name_index
	}, ; 1301
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 932; uint32_t java_name_index
	}, ; 1302
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 111; uint32_t java_name_index
	}, ; 1303
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 206; uint32_t java_name_index
	}, ; 1304
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003bc, ; uint32_t type_token_id
		i32 951; uint32_t java_name_index
	}, ; 1305
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000a3, ; uint32_t type_token_id
		i32 1355; uint32_t java_name_index
	}, ; 1306
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000061, ; uint32_t type_token_id
		i32 1195; uint32_t java_name_index
	}, ; 1307
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003d6, ; uint32_t type_token_id
		i32 427; uint32_t java_name_index
	}, ; 1308
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000fd, ; uint32_t type_token_id
		i32 42; uint32_t java_name_index
	}, ; 1309
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000034, ; uint32_t type_token_id
		i32 1090; uint32_t java_name_index
	}, ; 1310
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1276; uint32_t java_name_index
	}, ; 1311
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1309; uint32_t java_name_index
	}, ; 1312
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 288; uint32_t java_name_index
	}, ; 1313
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 695; uint32_t java_name_index
	}, ; 1314
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003e8, ; uint32_t type_token_id
		i32 440; uint32_t java_name_index
	}, ; 1315
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200016d, ; uint32_t type_token_id
		i32 109; uint32_t java_name_index
	}, ; 1316
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000045, ; uint32_t type_token_id
		i32 993; uint32_t java_name_index
	}, ; 1317
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000292, ; uint32_t type_token_id
		i32 258; uint32_t java_name_index
	}, ; 1318
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 829; uint32_t java_name_index
	}, ; 1319
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001e7, ; uint32_t type_token_id
		i32 184; uint32_t java_name_index
	}, ; 1320
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002c2, ; uint32_t type_token_id
		i32 282; uint32_t java_name_index
	}, ; 1321
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1238; uint32_t java_name_index
	}, ; 1322
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200016f, ; uint32_t type_token_id
		i32 110; uint32_t java_name_index
	}, ; 1323
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000a6, ; uint32_t type_token_id
		i32 636; uint32_t java_name_index
	}, ; 1324
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 1349; uint32_t java_name_index
	}, ; 1325
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000a9, ; uint32_t type_token_id
		i32 1361; uint32_t java_name_index
	}, ; 1326
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000038, ; uint32_t type_token_id
		i32 986; uint32_t java_name_index
	}, ; 1327
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000e1, ; uint32_t type_token_id
		i32 714; uint32_t java_name_index
	}, ; 1328
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000070, ; uint32_t type_token_id
		i32 612; uint32_t java_name_index
	}, ; 1329
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000352, ; uint32_t type_token_id
		i32 354; uint32_t java_name_index
	}, ; 1330
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 1102; uint32_t java_name_index
	}, ; 1331
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1286; uint32_t java_name_index
	}, ; 1332
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 942; uint32_t java_name_index
	}, ; 1333
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001dc, ; uint32_t type_token_id
		i32 757; uint32_t java_name_index
	}, ; 1334
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 488; uint32_t java_name_index
	}, ; 1335
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000076, ; uint32_t type_token_id
		i32 1020; uint32_t java_name_index
	}, ; 1336
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 1379; uint32_t java_name_index
	}, ; 1337
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 573; uint32_t java_name_index
	}, ; 1338
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 625; uint32_t java_name_index
	}, ; 1339
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001a8, ; uint32_t type_token_id
		i32 142; uint32_t java_name_index
	}, ; 1340
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003f6, ; uint32_t type_token_id
		i32 450; uint32_t java_name_index
	}, ; 1341
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000b4, ; uint32_t type_token_id
		i32 645; uint32_t java_name_index
	}, ; 1342
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200039e, ; uint32_t type_token_id
		i32 935; uint32_t java_name_index
	}, ; 1343
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 1334; uint32_t java_name_index
	}, ; 1344
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000018, ; uint32_t type_token_id
		i32 682; uint32_t java_name_index
	}, ; 1345
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000ba, ; uint32_t type_token_id
		i32 1372; uint32_t java_name_index
	}, ; 1346
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000099, ; uint32_t type_token_id
		i32 1219; uint32_t java_name_index
	}, ; 1347
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000450, ; uint32_t type_token_id
		i32 507; uint32_t java_name_index
	}, ; 1348
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1347; uint32_t java_name_index
	}, ; 1349
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200015e, ; uint32_t type_token_id
		i32 99; uint32_t java_name_index
	}, ; 1350
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000f0, ; uint32_t type_token_id
		i32 717; uint32_t java_name_index
	}, ; 1351
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002aa, ; uint32_t type_token_id
		i32 271; uint32_t java_name_index
	}, ; 1352
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200031e, ; uint32_t type_token_id
		i32 309; uint32_t java_name_index
	}, ; 1353
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 231; uint32_t java_name_index
	}, ; 1354
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1313; uint32_t java_name_index
	}, ; 1355
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1344; uint32_t java_name_index
	}, ; 1356
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000bd, ; uint32_t type_token_id
		i32 5; uint32_t java_name_index
	}, ; 1357
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000005, ; uint32_t type_token_id
		i32 1050; uint32_t java_name_index
	}, ; 1358
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002f3, ; uint32_t type_token_id
		i32 294; uint32_t java_name_index
	}, ; 1359
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1278; uint32_t java_name_index
	}, ; 1360
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000351, ; uint32_t type_token_id
		i32 888; uint32_t java_name_index
	}, ; 1361
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200018c, ; uint32_t type_token_id
		i32 726; uint32_t java_name_index
	}, ; 1362
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001ea, ; uint32_t type_token_id
		i32 766; uint32_t java_name_index
	}, ; 1363
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 998; uint32_t java_name_index
	}, ; 1364
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 609; uint32_t java_name_index
	}, ; 1365
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 524; uint32_t java_name_index
	}, ; 1366
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 164; uint32_t java_name_index
	}, ; 1367
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000624, ; uint32_t type_token_id
		i32 923; uint32_t java_name_index
	}, ; 1368
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x020003d9, ; uint32_t type_token_id
		i32 970; uint32_t java_name_index
	}, ; 1369
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000070, ; uint32_t type_token_id
		i32 1328; uint32_t java_name_index
	}, ; 1370
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 56; uint32_t java_name_index
	}, ; 1371
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002a7, ; uint32_t type_token_id
		i32 269; uint32_t java_name_index
	}, ; 1372
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000384, ; uint32_t type_token_id
		i32 914; uint32_t java_name_index
	}, ; 1373
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x02000037, ; uint32_t type_token_id
		i32 846; uint32_t java_name_index
	}, ; 1374
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000083, ; uint32_t type_token_id
		i32 1213; uint32_t java_name_index
	}, ; 1375
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000153, ; uint32_t type_token_id
		i32 91; uint32_t java_name_index
	}, ; 1376
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200019c, ; uint32_t type_token_id
		i32 134; uint32_t java_name_index
	}, ; 1377
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020001db, ; uint32_t type_token_id
		i32 756; uint32_t java_name_index
	}, ; 1378
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003a1, ; uint32_t type_token_id
		i32 400; uint32_t java_name_index
	}, ; 1379
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 446; uint32_t java_name_index
	}, ; 1380
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 65; uint32_t java_name_index
	}, ; 1381
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 1302; uint32_t java_name_index
	}, ; 1382
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 580; uint32_t java_name_index
	}, ; 1383
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000069, ; uint32_t type_token_id
		i32 608; uint32_t java_name_index
	}, ; 1384
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 72; uint32_t java_name_index
	} ; 1385
], align 16

; Java type names
@java_type_names = dso_local local_unnamed_addr constant [1386 x ptr] [
	ptr @.tmr.0, ; 0 ('xamarin/android/net/ServerCertificateCustomValidator_TrustManager')
	ptr @.tmr.1, ; 1 ('xamarin/android/net/ServerCertificateCustomValidator_TrustManager_FakeSSLSession')
	ptr @.tmr.2, ; 2 ('xamarin/android/net/ServerCertificateCustomValidator_AlwaysAcceptingHostnameVerifier')
	ptr @.tmr.3, ; 3 ('org/xmlpull/v1/XmlPullParser')
	ptr @.tmr.4, ; 4 ('org/xmlpull/v1/XmlPullParserException')
	ptr @.tmr.5, ; 5 ('javax/security/cert/Certificate')
	ptr @.tmr.6, ; 6 ('javax/security/cert/X509Certificate')
	ptr @.tmr.7, ; 7 ('javax/security/auth/Subject')
	ptr @.tmr.8, ; 8 ('javax/net/SocketFactory')
	ptr @.tmr.9, ; 9 ('javax/net/ssl/HttpsURLConnection')
	ptr @.tmr.10, ; 10 ('javax/net/ssl/HostnameVerifier')
	ptr @.tmr.11, ; 11 ('javax/net/ssl/KeyManager')
	ptr @.tmr.12, ; 12 ('javax/net/ssl/SSLSession')
	ptr @.tmr.13, ; 13 ('javax/net/ssl/SSLSessionContext')
	ptr @.tmr.14, ; 14 ('javax/net/ssl/TrustManager')
	ptr @.tmr.15, ; 15 ('javax/net/ssl/X509TrustManager')
	ptr @.tmr.16, ; 16 ('javax/net/ssl/KeyManagerFactory')
	ptr @.tmr.17, ; 17 ('javax/net/ssl/SSLContext')
	ptr @.tmr.18, ; 18 ('javax/net/ssl/SSLEngine')
	ptr @.tmr.19, ; 19 ('javax/net/ssl/SSLSocketFactory')
	ptr @.tmr.20, ; 20 ('javax/net/ssl/TrustManagerFactory')
	ptr @.tmr.21, ; 21 ('javax/net/ssl/X509ExtendedTrustManager')
	ptr @.tmr.22, ; 22 ('android/window/BackEvent')
	ptr @.tmr.23, ; 23 ('android/window/InputTransferToken')
	ptr @.tmr.24, ; 24 ('android/window/OnBackInvokedCallback')
	ptr @.tmr.25, ; 25 ('android/window/OnBackInvokedDispatcher')
	ptr @.tmr.26, ; 26 ('android/window/TrustedPresentationThresholds')
	ptr @.tmr.27, ; 27 ('android/webkit/CookieManager')
	ptr @.tmr.28, ; 28 ('android/webkit/ValueCallback')
	ptr @.tmr.29, ; 29 ('android/webkit/WebResourceRequest')
	ptr @.tmr.30, ; 30 ('android/webkit/MimeTypeMap')
	ptr @.tmr.31, ; 31 ('android/webkit/RenderProcessGoneDetail')
	ptr @.tmr.32, ; 32 ('android/webkit/WebChromeClient')
	ptr @.tmr.33, ; 33 ('android/webkit/WebChromeClient$CustomViewCallback')
	ptr @.tmr.34, ; 34 ('android/webkit/WebChromeClient$FileChooserParams')
	ptr @.tmr.35, ; 35 ('android/webkit/WebMessage')
	ptr @.tmr.36, ; 36 ('android/webkit/WebResourceError')
	ptr @.tmr.37, ; 37 ('android/webkit/WebResourceResponse')
	ptr @.tmr.38, ; 38 ('android/webkit/WebSettings')
	ptr @.tmr.39, ; 39 ('android/webkit/WebView')
	ptr @.tmr.40, ; 40 ('android/webkit/WebViewClient')
	ptr @.tmr.41, ; 41 ('android/provider/DocumentsContract')
	ptr @.tmr.42, ; 42 ('android/provider/MediaStore')
	ptr @.tmr.43, ; 43 ('android/provider/MediaStore$Audio')
	ptr @.tmr.44, ; 44 ('android/provider/MediaStore$Audio$Media')
	ptr @.tmr.45, ; 45 ('android/provider/MediaStore$Images')
	ptr @.tmr.46, ; 46 ('android/provider/MediaStore$Images$Media')
	ptr @.tmr.47, ; 47 ('android/provider/MediaStore$Video')
	ptr @.tmr.48, ; 48 ('android/provider/MediaStore$Video$Media')
	ptr @.tmr.49, ; 49 ('android/database/CharArrayBuffer')
	ptr @.tmr.50, ; 50 ('android/database/ContentObserver')
	ptr @.tmr.51, ; 51 ('android/database/DataSetObserver')
	ptr @.tmr.52, ; 52 ('android/database/Cursor')
	ptr @.tmr.53, ; 53 ('android/widget/AbsListView')
	ptr @.tmr.54, ; 54 ('android/widget/AbsListView$OnScrollListener')
	ptr @.tmr.55, ; 55 ('android/widget/AdapterView')
	ptr @.tmr.56, ; 56 ('android/widget/AdapterView$OnItemClickListener')
	ptr @.tmr.57, ; 57 ('mono/android/widget/AdapterView_OnItemClickListenerImplementor')
	ptr @.tmr.58, ; 58 ('android/widget/AdapterView$OnItemLongClickListener')
	ptr @.tmr.59, ; 59 ('android/widget/AdapterView$OnItemSelectedListener')
	ptr @.tmr.60, ; 60 ('android/widget/AutoCompleteTextView')
	ptr @.tmr.61, ; 61 ('android/widget/BaseAdapter')
	ptr @.tmr.62, ; 62 ('android/widget/DatePicker')
	ptr @.tmr.63, ; 63 ('android/widget/TextView')
	ptr @.tmr.64, ; 64 ('android/widget/TextView$BufferType')
	ptr @.tmr.65, ; 65 ('android/widget/TextView$OnEditorActionListener')
	ptr @.tmr.66, ; 66 ('mono/android/widget/TextView_OnEditorActionListenerImplementor')
	ptr @.tmr.67, ; 67 ('android/widget/AbsoluteLayout')
	ptr @.tmr.68, ; 68 ('android/widget/AbsSeekBar')
	ptr @.tmr.69, ; 69 ('android/widget/Button')
	ptr @.tmr.70, ; 70 ('android/widget/CheckBox')
	ptr @.tmr.71, ; 71 ('android/widget/CompoundButton')
	ptr @.tmr.72, ; 72 ('android/widget/CompoundButton$OnCheckedChangeListener')
	ptr @.tmr.73, ; 73 ('mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor')
	ptr @.tmr.74, ; 74 ('android/widget/EdgeEffect')
	ptr @.tmr.75, ; 75 ('android/widget/EditText')
	ptr @.tmr.76, ; 76 ('android/widget/Filter')
	ptr @.tmr.77, ; 77 ('android/widget/Filter$FilterResults')
	ptr @.tmr.78, ; 78 ('android/widget/FrameLayout')
	ptr @.tmr.79, ; 79 ('android/widget/FrameLayout$LayoutParams')
	ptr @.tmr.80, ; 80 ('android/widget/HorizontalScrollView')
	ptr @.tmr.81, ; 81 ('android/widget/Adapter')
	ptr @.tmr.82, ; 82 ('android/widget/Filterable')
	ptr @.tmr.83, ; 83 ('android/widget/FilterQueryProvider')
	ptr @.tmr.84, ; 84 ('android/widget/ListAdapter')
	ptr @.tmr.85, ; 85 ('android/widget/ImageButton')
	ptr @.tmr.86, ; 86 ('android/widget/ImageView')
	ptr @.tmr.87, ; 87 ('android/widget/ImageView$ScaleType')
	ptr @.tmr.88, ; 88 ('android/widget/SectionIndexer')
	ptr @.tmr.89, ; 89 ('android/widget/SpinnerAdapter')
	ptr @.tmr.90, ; 90 ('android/widget/LinearLayout')
	ptr @.tmr.91, ; 91 ('android/widget/LinearLayout$LayoutParams')
	ptr @.tmr.92, ; 92 ('android/widget/ListView')
	ptr @.tmr.93, ; 93 ('android/widget/ProgressBar')
	ptr @.tmr.94, ; 94 ('android/widget/RadioButton')
	ptr @.tmr.95, ; 95 ('android/widget/RemoteViews')
	ptr @.tmr.96, ; 96 ('android/widget/SearchView')
	ptr @.tmr.97, ; 97 ('android/widget/SeekBar')
	ptr @.tmr.98, ; 98 ('android/widget/SeekBar$OnSeekBarChangeListener')
	ptr @.tmr.99, ; 99 ('android/widget/Switch')
	ptr @.tmr.100, ; 100 ('android/widget/TimePicker')
	ptr @.tmr.101, ; 101 ('android/util/Log')
	ptr @.tmr.102, ; 102 ('android/util/DisplayMetrics')
	ptr @.tmr.103, ; 103 ('android/util/AttributeSet')
	ptr @.tmr.104, ; 104 ('android/util/Pair')
	ptr @.tmr.105, ; 105 ('android/util/SizeF')
	ptr @.tmr.106, ; 106 ('android/util/SparseArray')
	ptr @.tmr.107, ; 107 ('android/util/StateSet')
	ptr @.tmr.108, ; 108 ('android/util/TypedValue')
	ptr @.tmr.109, ; 109 ('mono/android/text/TextWatcherImplementor')
	ptr @.tmr.110, ; 110 ('android/text/Html')
	ptr @.tmr.111, ; 111 ('android/text/Editable')
	ptr @.tmr.112, ; 112 ('android/text/GetChars')
	ptr @.tmr.113, ; 113 ('android/text/InputFilter$LengthFilter')
	ptr @.tmr.114, ; 114 ('android/text/InputFilter')
	ptr @.tmr.115, ; 115 ('android/text/NoCopySpan')
	ptr @.tmr.116, ; 116 ('android/text/Spannable')
	ptr @.tmr.117, ; 117 ('android/text/Spanned')
	ptr @.tmr.118, ; 118 ('android/text/TextDirectionHeuristic')
	ptr @.tmr.119, ; 119 ('android/text/TextWatcher')
	ptr @.tmr.120, ; 120 ('android/text/Layout')
	ptr @.tmr.121, ; 121 ('android/text/Layout$Alignment')
	ptr @.tmr.122, ; 122 ('android/text/SpannableString')
	ptr @.tmr.123, ; 123 ('android/text/SpannableStringBuilder')
	ptr @.tmr.124, ; 124 ('android/text/SpannableStringInternal')
	ptr @.tmr.125, ; 125 ('android/text/StaticLayout')
	ptr @.tmr.126, ; 126 ('android/text/StaticLayout$Builder')
	ptr @.tmr.127, ; 127 ('android/text/TextPaint')
	ptr @.tmr.128, ; 128 ('android/text/TextUtils')
	ptr @.tmr.129, ; 129 ('android/text/TextUtils$TruncateAt')
	ptr @.tmr.130, ; 130 ('android/text/style/BackgroundColorSpan')
	ptr @.tmr.131, ; 131 ('android/text/style/BulletSpan')
	ptr @.tmr.132, ; 132 ('android/text/style/CharacterStyle')
	ptr @.tmr.133, ; 133 ('android/text/style/ClickableSpan')
	ptr @.tmr.134, ; 134 ('android/text/style/ForegroundColorSpan')
	ptr @.tmr.135, ; 135 ('android/text/style/LineHeightSpan')
	ptr @.tmr.136, ; 136 ('android/text/style/ParagraphStyle')
	ptr @.tmr.137, ; 137 ('android/text/style/WrapTogetherSpan')
	ptr @.tmr.138, ; 138 ('android/text/style/MetricAffectingSpan')
	ptr @.tmr.139, ; 139 ('android/text/style/StrikethroughSpan')
	ptr @.tmr.140, ; 140 ('android/text/style/StyleSpan')
	ptr @.tmr.141, ; 141 ('android/text/style/SubscriptSpan')
	ptr @.tmr.142, ; 142 ('android/text/style/SuperscriptSpan')
	ptr @.tmr.143, ; 143 ('android/text/style/TypefaceSpan')
	ptr @.tmr.144, ; 144 ('android/text/style/UnderlineSpan')
	ptr @.tmr.145, ; 145 ('android/text/method/BaseKeyListener')
	ptr @.tmr.146, ; 146 ('android/text/method/DigitsKeyListener')
	ptr @.tmr.147, ; 147 ('android/text/method/KeyListener')
	ptr @.tmr.148, ; 148 ('android/text/method/MovementMethod')
	ptr @.tmr.149, ; 149 ('android/text/method/MetaKeyKeyListener')
	ptr @.tmr.150, ; 150 ('android/text/method/NumberKeyListener')
	ptr @.tmr.151, ; 151 ('android/text/format/DateFormat')
	ptr @.tmr.152, ; 152 ('android/preference/PreferenceManager')
	ptr @.tmr.153, ; 153 ('android/opengl/Matrix')
	ptr @.tmr.154, ; 154 ('android/os/Handler')
	ptr @.tmr.155, ; 155 ('android/os/Message')
	ptr @.tmr.156, ; 156 ('android/os/PowerManager')
	ptr @.tmr.157, ; 157 ('android/os/Vibrator')
	ptr @.tmr.158, ; 158 ('android/os/BaseBundle')
	ptr @.tmr.159, ; 159 ('android/os/Build')
	ptr @.tmr.160, ; 160 ('android/os/Build$VERSION')
	ptr @.tmr.161, ; 161 ('android/os/Bundle')
	ptr @.tmr.162, ; 162 ('android/os/CancellationSignal')
	ptr @.tmr.163, ; 163 ('android/os/Environment')
	ptr @.tmr.164, ; 164 ('android/os/IBinder$DeathRecipient')
	ptr @.tmr.165, ; 165 ('android/os/IBinder')
	ptr @.tmr.166, ; 166 ('android/os/IBinder$FrozenStateChangeCallback')
	ptr @.tmr.167, ; 167 ('android/os/IInterface')
	ptr @.tmr.168, ; 168 ('android/os/Parcelable$Creator')
	ptr @.tmr.169, ; 169 ('android/os/Parcelable')
	ptr @.tmr.170, ; 170 ('android/os/LocaleList')
	ptr @.tmr.171, ; 171 ('android/os/Looper')
	ptr @.tmr.172, ; 172 ('android/os/Parcel')
	ptr @.tmr.173, ; 173 ('android/os/PersistableBundle')
	ptr @.tmr.174, ; 174 ('android/os/SystemClock')
	ptr @.tmr.175, ; 175 ('android/os/UserHandle')
	ptr @.tmr.176, ; 176 ('android/os/VibrationEffect')
	ptr @.tmr.177, ; 177 ('android/os/VibratorManager')
	ptr @.tmr.178, ; 178 ('android/media/AudioAttributes')
	ptr @.tmr.179, ; 179 ('android/media/AudioAttributes$Builder')
	ptr @.tmr.180, ; 180 ('android/media/ExifInterface')
	ptr @.tmr.181, ; 181 ('android/media/RingtoneManager')
	ptr @.tmr.182, ; 182 ('android/location/Address')
	ptr @.tmr.183, ; 183 ('android/location/Geocoder')
	ptr @.tmr.184, ; 184 ('android/location/Location')
	ptr @.tmr.185, ; 185 ('android/animation/Animator')
	ptr @.tmr.186, ; 186 ('android/animation/Animator$AnimatorListener')
	ptr @.tmr.187, ; 187 ('mono/android/animation/AnimatorEventDispatcher')
	ptr @.tmr.188, ; 188 ('android/animation/ValueAnimator')
	ptr @.tmr.189, ; 189 ('android/animation/ValueAnimator$AnimatorUpdateListener')
	ptr @.tmr.190, ; 190 ('mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor')
	ptr @.tmr.191, ; 191 ('android/animation/ValueAnimator$DurationScaleChangeListener')
	ptr @.tmr.192, ; 192 ('android/animation/AnimatorListenerAdapter')
	ptr @.tmr.193, ; 193 ('android/animation/TimeInterpolator')
	ptr @.tmr.194, ; 194 ('android/view/WindowManager$LayoutParams')
	ptr @.tmr.195, ; 195 ('android/view/View')
	ptr @.tmr.196, ; 196 ('android/view/View$AccessibilityDelegate')
	ptr @.tmr.197, ; 197 ('android/view/View$DragShadowBuilder')
	ptr @.tmr.198, ; 198 ('android/view/View$MeasureSpec')
	ptr @.tmr.199, ; 199 ('android/view/View$OnAttachStateChangeListener')
	ptr @.tmr.200, ; 200 ('mono/android/view/View_OnAttachStateChangeListenerImplementor')
	ptr @.tmr.201, ; 201 ('android/view/View$OnClickListener')
	ptr @.tmr.202, ; 202 ('mono/android/view/View_OnClickListenerImplementor')
	ptr @.tmr.203, ; 203 ('android/view/View$OnDragListener')
	ptr @.tmr.204, ; 204 ('android/view/View$OnFocusChangeListener')
	ptr @.tmr.205, ; 205 ('mono/android/view/View_OnFocusChangeListenerImplementor')
	ptr @.tmr.206, ; 206 ('android/view/View$OnHoverListener')
	ptr @.tmr.207, ; 207 ('android/view/View$OnKeyListener')
	ptr @.tmr.208, ; 208 ('mono/android/view/View_OnKeyListenerImplementor')
	ptr @.tmr.209, ; 209 ('android/view/View$OnLayoutChangeListener')
	ptr @.tmr.210, ; 210 ('mono/android/view/View_OnLayoutChangeListenerImplementor')
	ptr @.tmr.211, ; 211 ('android/view/View$OnScrollChangeListener')
	ptr @.tmr.212, ; 212 ('mono/android/view/View_OnScrollChangeListenerImplementor')
	ptr @.tmr.213, ; 213 ('android/view/View$OnTouchListener')
	ptr @.tmr.214, ; 214 ('mono/android/view/View_OnTouchListenerImplementor')
	ptr @.tmr.215, ; 215 ('android/view/KeyEvent')
	ptr @.tmr.216, ; 216 ('android/view/LayoutInflater')
	ptr @.tmr.217, ; 217 ('android/view/MotionEvent')
	ptr @.tmr.218, ; 218 ('android/view/ViewTreeObserver')
	ptr @.tmr.219, ; 219 ('android/view/ViewTreeObserver$OnGlobalLayoutListener')
	ptr @.tmr.220, ; 220 ('android/view/Window')
	ptr @.tmr.221, ; 221 ('android/view/Window$Callback')
	ptr @.tmr.222, ; 222 ('android/view/ActionMode')
	ptr @.tmr.223, ; 223 ('android/view/ActionMode$Callback')
	ptr @.tmr.224, ; 224 ('android/view/ActionProvider')
	ptr @.tmr.225, ; 225 ('android/view/Choreographer')
	ptr @.tmr.226, ; 226 ('android/view/ContentInfo')
	ptr @.tmr.227, ; 227 ('android/view/ContextThemeWrapper')
	ptr @.tmr.228, ; 228 ('android/view/Display')
	ptr @.tmr.229, ; 229 ('android/view/DragEvent')
	ptr @.tmr.230, ; 230 ('android/view/GestureDetector')
	ptr @.tmr.231, ; 231 ('android/view/GestureDetector$OnDoubleTapListener')
	ptr @.tmr.232, ; 232 ('android/view/GestureDetector$OnGestureListener')
	ptr @.tmr.233, ; 233 ('android/view/ContextMenu$ContextMenuInfo')
	ptr @.tmr.234, ; 234 ('android/view/ContextMenu')
	ptr @.tmr.235, ; 235 ('android/view/Menu')
	ptr @.tmr.236, ; 236 ('android/view/MenuItem$OnActionExpandListener')
	ptr @.tmr.237, ; 237 ('android/view/MenuItem$OnMenuItemClickListener')
	ptr @.tmr.238, ; 238 ('android/view/MenuItem')
	ptr @.tmr.239, ; 239 ('android/view/InputEvent')
	ptr @.tmr.240, ; 240 ('android/view/SubMenu')
	ptr @.tmr.241, ; 241 ('android/view/SurfaceControlInputReceiver')
	ptr @.tmr.242, ; 242 ('android/view/ViewManager')
	ptr @.tmr.243, ; 243 ('android/view/ViewParent')
	ptr @.tmr.244, ; 244 ('android/view/WindowInsetsAnimationController')
	ptr @.tmr.245, ; 245 ('android/view/WindowInsetsAnimationControlListener')
	ptr @.tmr.246, ; 246 ('android/view/WindowInsetsController')
	ptr @.tmr.247, ; 247 ('android/view/WindowInsetsController$OnControllableInsetsChangedListener')
	ptr @.tmr.248, ; 248 ('android/view/WindowManager')
	ptr @.tmr.249, ; 249 ('android/view/KeyboardShortcutGroup')
	ptr @.tmr.250, ; 250 ('android/view/KeyboardShortcutInfo')
	ptr @.tmr.251, ; 251 ('android/view/MenuInflater')
	ptr @.tmr.252, ; 252 ('android/view/OrientationEventListener')
	ptr @.tmr.253, ; 253 ('android/view/ScaleGestureDetector')
	ptr @.tmr.254, ; 254 ('android/view/ScaleGestureDetector$OnScaleGestureListener')
	ptr @.tmr.255, ; 255 ('android/view/ScaleGestureDetector$SimpleOnScaleGestureListener')
	ptr @.tmr.256, ; 256 ('android/view/SearchEvent')
	ptr @.tmr.257, ; 257 ('android/view/SurfaceControl')
	ptr @.tmr.258, ; 258 ('android/view/ViewConfiguration')
	ptr @.tmr.259, ; 259 ('android/view/ViewGroup')
	ptr @.tmr.260, ; 260 ('android/view/ViewGroup$LayoutParams')
	ptr @.tmr.261, ; 261 ('android/view/ViewGroup$MarginLayoutParams')
	ptr @.tmr.262, ; 262 ('android/view/ViewGroup$OnHierarchyChangeListener')
	ptr @.tmr.263, ; 263 ('mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor')
	ptr @.tmr.264, ; 264 ('android/view/ViewPropertyAnimator')
	ptr @.tmr.265, ; 265 ('android/view/ViewStructure')
	ptr @.tmr.266, ; 266 ('android/view/WindowInsets')
	ptr @.tmr.267, ; 267 ('android/view/WindowInsetsAnimation')
	ptr @.tmr.268, ; 268 ('android/view/WindowInsetsAnimation$Bounds')
	ptr @.tmr.269, ; 269 ('android/view/WindowMetrics')
	ptr @.tmr.270, ; 270 ('android/view/contentcapture/ContentCaptureSession')
	ptr @.tmr.271, ; 271 ('android/view/autofill/AutofillId')
	ptr @.tmr.272, ; 272 ('android/view/animation/Animation')
	ptr @.tmr.273, ; 273 ('android/view/animation/Animation$AnimationListener')
	ptr @.tmr.274, ; 274 ('mono/android/view/animation/Animation_AnimationListenerImplementor')
	ptr @.tmr.275, ; 275 ('android/view/animation/AnimationSet')
	ptr @.tmr.276, ; 276 ('android/view/animation/AnimationUtils')
	ptr @.tmr.277, ; 277 ('android/view/animation/BaseInterpolator')
	ptr @.tmr.278, ; 278 ('android/view/animation/DecelerateInterpolator')
	ptr @.tmr.279, ; 279 ('android/view/animation/Interpolator')
	ptr @.tmr.280, ; 280 ('android/view/animation/LinearInterpolator')
	ptr @.tmr.281, ; 281 ('android/view/inputmethod/InputMethodManager')
	ptr @.tmr.282, ; 282 ('android/view/accessibility/AccessibilityEvent')
	ptr @.tmr.283, ; 283 ('android/view/accessibility/AccessibilityNodeInfo')
	ptr @.tmr.284, ; 284 ('android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo')
	ptr @.tmr.285, ; 285 ('android/view/accessibility/AccessibilityRecord')
	ptr @.tmr.286, ; 286 ('android/view/accessibility/AccessibilityWindowInfo')
	ptr @.tmr.287, ; 287 ('mono/android/runtime/InputStreamAdapter')
	ptr @.tmr.288, ; 288 ('mono/android/runtime/JavaArray')
	ptr @.tmr.289, ; 289 ('java/util/Collection')
	ptr @.tmr.290, ; 290 ('java/util/HashMap')
	ptr @.tmr.291, ; 291 ('java/util/ArrayList')
	ptr @.tmr.292, ; 292 ('mono/android/runtime/JavaObject')
	ptr @.tmr.293, ; 293 ('android/runtime/JavaProxyThrowable')
	ptr @.tmr.294, ; 294 ('java/util/HashSet')
	ptr @.tmr.295, ; 295 ('mono/android/runtime/OutputStreamAdapter')
	ptr @.tmr.296, ; 296 ('android/runtime/XmlReaderPullParser')
	ptr @.tmr.297, ; 297 ('android/net/Uri')
	ptr @.tmr.298, ; 298 ('android/net/http/X509TrustManagerExtensions')
	ptr @.tmr.299, ; 299 ('android/graphics/Bitmap')
	ptr @.tmr.300, ; 300 ('android/graphics/Bitmap$CompressFormat')
	ptr @.tmr.301, ; 301 ('android/graphics/Bitmap$Config')
	ptr @.tmr.302, ; 302 ('android/graphics/Canvas')
	ptr @.tmr.303, ; 303 ('android/graphics/BitmapFactory')
	ptr @.tmr.304, ; 304 ('android/graphics/BitmapShader')
	ptr @.tmr.305, ; 305 ('android/graphics/BlendMode')
	ptr @.tmr.306, ; 306 ('android/graphics/BlurMaskFilter')
	ptr @.tmr.307, ; 307 ('android/graphics/BlurMaskFilter$Blur')
	ptr @.tmr.308, ; 308 ('android/graphics/ColorFilter')
	ptr @.tmr.309, ; 309 ('android/graphics/Color')
	ptr @.tmr.310, ; 310 ('android/graphics/DashPathEffect')
	ptr @.tmr.311, ; 311 ('android/graphics/Insets')
	ptr @.tmr.312, ; 312 ('android/graphics/LinearGradient')
	ptr @.tmr.313, ; 313 ('android/graphics/MaskFilter')
	ptr @.tmr.314, ; 314 ('android/graphics/Matrix')
	ptr @.tmr.315, ; 315 ('android/graphics/Paint')
	ptr @.tmr.316, ; 316 ('android/graphics/Paint$Cap')
	ptr @.tmr.317, ; 317 ('android/graphics/Paint$FontMetrics')
	ptr @.tmr.318, ; 318 ('android/graphics/Paint$FontMetricsInt')
	ptr @.tmr.319, ; 319 ('android/graphics/Paint$Join')
	ptr @.tmr.320, ; 320 ('android/graphics/Paint$Style')
	ptr @.tmr.321, ; 321 ('android/graphics/Path')
	ptr @.tmr.322, ; 322 ('android/graphics/Path$Direction')
	ptr @.tmr.323, ; 323 ('android/graphics/Path$FillType')
	ptr @.tmr.324, ; 324 ('android/graphics/Path$Op')
	ptr @.tmr.325, ; 325 ('android/graphics/PathEffect')
	ptr @.tmr.326, ; 326 ('android/graphics/Point')
	ptr @.tmr.327, ; 327 ('android/graphics/PointF')
	ptr @.tmr.328, ; 328 ('android/graphics/PorterDuff')
	ptr @.tmr.329, ; 329 ('android/graphics/PorterDuff$Mode')
	ptr @.tmr.330, ; 330 ('android/graphics/PorterDuffXfermode')
	ptr @.tmr.331, ; 331 ('android/graphics/RadialGradient')
	ptr @.tmr.332, ; 332 ('android/graphics/Rect')
	ptr @.tmr.333, ; 333 ('android/graphics/RectF')
	ptr @.tmr.334, ; 334 ('android/graphics/Region')
	ptr @.tmr.335, ; 335 ('android/graphics/Region$Op')
	ptr @.tmr.336, ; 336 ('android/graphics/Shader')
	ptr @.tmr.337, ; 337 ('android/graphics/Shader$TileMode')
	ptr @.tmr.338, ; 338 ('android/graphics/Typeface')
	ptr @.tmr.339, ; 339 ('android/graphics/Xfermode')
	ptr @.tmr.340, ; 340 ('android/graphics/drawable/Drawable')
	ptr @.tmr.341, ; 341 ('android/graphics/drawable/Drawable$ConstantState')
	ptr @.tmr.342, ; 342 ('android/graphics/drawable/DrawableContainer')
	ptr @.tmr.343, ; 343 ('android/graphics/drawable/InsetDrawable')
	ptr @.tmr.344, ; 344 ('android/graphics/drawable/LayerDrawable')
	ptr @.tmr.345, ; 345 ('android/graphics/drawable/AnimationDrawable')
	ptr @.tmr.346, ; 346 ('android/graphics/drawable/ColorDrawable')
	ptr @.tmr.347, ; 347 ('android/graphics/drawable/DrawableWrapper')
	ptr @.tmr.348, ; 348 ('android/graphics/drawable/GradientDrawable')
	ptr @.tmr.349, ; 349 ('android/graphics/drawable/GradientDrawable$Orientation')
	ptr @.tmr.350, ; 350 ('android/graphics/drawable/Animatable')
	ptr @.tmr.351, ; 351 ('android/graphics/drawable/Icon')
	ptr @.tmr.352, ; 352 ('android/graphics/drawable/PaintDrawable')
	ptr @.tmr.353, ; 353 ('android/graphics/drawable/RippleDrawable')
	ptr @.tmr.354, ; 354 ('android/graphics/drawable/ShapeDrawable')
	ptr @.tmr.355, ; 355 ('android/graphics/drawable/ShapeDrawable$ShaderFactory')
	ptr @.tmr.356, ; 356 ('android/graphics/drawable/StateListDrawable')
	ptr @.tmr.357, ; 357 ('android/graphics/drawable/shapes/OvalShape')
	ptr @.tmr.358, ; 358 ('android/graphics/drawable/shapes/RectShape')
	ptr @.tmr.359, ; 359 ('android/graphics/drawable/shapes/Shape')
	ptr @.tmr.360, ; 360 ('android/content/ContentProvider')
	ptr @.tmr.361, ; 361 ('android/content/ContentValues')
	ptr @.tmr.362, ; 362 ('android/content/Context')
	ptr @.tmr.363, ; 363 ('android/content/Intent')
	ptr @.tmr.364, ; 364 ('android/content/BroadcastReceiver')
	ptr @.tmr.365, ; 365 ('android/content/ClipData')
	ptr @.tmr.366, ; 366 ('android/content/ClipData$Item')
	ptr @.tmr.367, ; 367 ('android/content/ClipDescription')
	ptr @.tmr.368, ; 368 ('android/content/ComponentName')
	ptr @.tmr.369, ; 369 ('android/content/ContentResolver')
	ptr @.tmr.370, ; 370 ('android/content/ContextWrapper')
	ptr @.tmr.371, ; 371 ('android/content/DialogInterface$OnCancelListener')
	ptr @.tmr.372, ; 372 ('mono/android/content/DialogInterface_OnCancelListenerImplementor')
	ptr @.tmr.373, ; 373 ('android/content/DialogInterface$OnClickListener')
	ptr @.tmr.374, ; 374 ('mono/android/content/DialogInterface_OnClickListenerImplementor')
	ptr @.tmr.375, ; 375 ('android/content/DialogInterface$OnDismissListener')
	ptr @.tmr.376, ; 376 ('mono/android/content/DialogInterface_OnDismissListenerImplementor')
	ptr @.tmr.377, ; 377 ('android/content/DialogInterface$OnKeyListener')
	ptr @.tmr.378, ; 378 ('android/content/DialogInterface$OnMultiChoiceClickListener')
	ptr @.tmr.379, ; 379 ('android/content/DialogInterface$OnShowListener')
	ptr @.tmr.380, ; 380 ('mono/android/content/DialogInterface_OnShowListenerImplementor')
	ptr @.tmr.381, ; 381 ('android/content/DialogInterface')
	ptr @.tmr.382, ; 382 ('android/content/IntentFilter')
	ptr @.tmr.383, ; 383 ('android/content/IntentSender')
	ptr @.tmr.384, ; 384 ('android/content/SharedPreferences$Editor')
	ptr @.tmr.385, ; 385 ('android/content/SharedPreferences$OnSharedPreferenceChangeListener')
	ptr @.tmr.386, ; 386 ('android/content/SharedPreferences')
	ptr @.tmr.387, ; 387 ('android/content/LocusId')
	ptr @.tmr.388, ; 388 ('android/content/res/AssetFileDescriptor')
	ptr @.tmr.389, ; 389 ('android/content/res/AssetManager')
	ptr @.tmr.390, ; 390 ('android/content/res/ColorStateList')
	ptr @.tmr.391, ; 391 ('android/content/res/Configuration')
	ptr @.tmr.392, ; 392 ('android/content/res/Resources')
	ptr @.tmr.393, ; 393 ('android/content/res/Resources$Theme')
	ptr @.tmr.394, ; 394 ('android/content/res/TypedArray')
	ptr @.tmr.395, ; 395 ('android/content/pm/PackageManager')
	ptr @.tmr.396, ; 396 ('android/content/pm/ApplicationInfo')
	ptr @.tmr.397, ; 397 ('android/content/pm/PackageInfo')
	ptr @.tmr.398, ; 398 ('android/content/pm/PackageItemInfo')
	ptr @.tmr.399, ; 399 ('android/content/pm/ShortcutInfo')
	ptr @.tmr.400, ; 400 ('android/content/pm/ShortcutInfo$Builder')
	ptr @.tmr.401, ; 401 ('android/content/pm/ShortcutManager')
	ptr @.tmr.402, ; 402 ('android/content/pm/Signature')
	ptr @.tmr.403, ; 403 ('android/app/Activity')
	ptr @.tmr.404, ; 404 ('android/app/AlarmManager')
	ptr @.tmr.405, ; 405 ('android/app/AlertDialog')
	ptr @.tmr.406, ; 406 ('android/app/AlertDialog$Builder')
	ptr @.tmr.407, ; 407 ('android/app/Application')
	ptr @.tmr.408, ; 408 ('android/app/Application$ActivityLifecycleCallbacks')
	ptr @.tmr.409, ; 409 ('android/app/DatePickerDialog')
	ptr @.tmr.410, ; 410 ('android/app/DatePickerDialog$OnDateSetListener')
	ptr @.tmr.411, ; 411 ('mono/android/app/DatePickerDialog_OnDateSetListenerImplementor')
	ptr @.tmr.412, ; 412 ('android/app/Dialog')
	ptr @.tmr.413, ; 413 ('android/app/Notification')
	ptr @.tmr.414, ; 414 ('android/app/Notification$BubbleMetadata')
	ptr @.tmr.415, ; 415 ('android/app/Notification$Builder')
	ptr @.tmr.416, ; 416 ('android/app/NotificationManager')
	ptr @.tmr.417, ; 417 ('android/app/TimePickerDialog')
	ptr @.tmr.418, ; 418 ('android/app/TimePickerDialog$OnTimeSetListener')
	ptr @.tmr.419, ; 419 ('mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor')
	ptr @.tmr.420, ; 420 ('android/app/UiModeManager')
	ptr @.tmr.421, ; 421 ('android/app/NotificationChannel')
	ptr @.tmr.422, ; 422 ('android/app/NotificationChannelGroup')
	ptr @.tmr.423, ; 423 ('android/app/PendingIntent')
	ptr @.tmr.424, ; 424 ('android/app/Person')
	ptr @.tmr.425, ; 425 ('android/app/SearchableInfo')
	ptr @.tmr.426, ; 426 ('java/text/DecimalFormat')
	ptr @.tmr.427, ; 427 ('java/text/DecimalFormatSymbols')
	ptr @.tmr.428, ; 428 ('java/text/NumberFormat')
	ptr @.tmr.429, ; 429 ('java/text/Format')
	ptr @.tmr.430, ; 430 ('java/net/ConnectException')
	ptr @.tmr.431, ; 431 ('java/net/HttpURLConnection')
	ptr @.tmr.432, ; 432 ('java/net/InetSocketAddress')
	ptr @.tmr.433, ; 433 ('java/net/ProtocolException')
	ptr @.tmr.434, ; 434 ('java/net/Proxy')
	ptr @.tmr.435, ; 435 ('java/net/Proxy$Type')
	ptr @.tmr.436, ; 436 ('java/net/Socket')
	ptr @.tmr.437, ; 437 ('java/net/SocketAddress')
	ptr @.tmr.438, ; 438 ('java/net/SocketException')
	ptr @.tmr.439, ; 439 ('java/net/SocketTimeoutException')
	ptr @.tmr.440, ; 440 ('java/net/UnknownServiceException')
	ptr @.tmr.441, ; 441 ('java/net/URL')
	ptr @.tmr.442, ; 442 ('java/net/URLConnection')
	ptr @.tmr.443, ; 443 ('java/security/GeneralSecurityException')
	ptr @.tmr.444, ; 444 ('java/security/Key')
	ptr @.tmr.445, ; 445 ('java/security/Principal')
	ptr @.tmr.446, ; 446 ('java/security/PrivateKey')
	ptr @.tmr.447, ; 447 ('java/security/KeyFactory')
	ptr @.tmr.448, ; 448 ('java/security/KeyStore')
	ptr @.tmr.449, ; 449 ('java/security/SecureRandom')
	ptr @.tmr.450, ; 450 ('java/security/spec/EncodedKeySpec')
	ptr @.tmr.451, ; 451 ('java/security/spec/KeySpec')
	ptr @.tmr.452, ; 452 ('java/security/spec/PKCS8EncodedKeySpec')
	ptr @.tmr.453, ; 453 ('java/security/cert/Certificate')
	ptr @.tmr.454, ; 454 ('java/security/cert/CertificateException')
	ptr @.tmr.455, ; 455 ('java/security/cert/X509Certificate')
	ptr @.tmr.456, ; 456 ('java/nio/channels/FileChannel')
	ptr @.tmr.457, ; 457 ('java/nio/channels/spi/AbstractInterruptibleChannel')
	ptr @.tmr.458, ; 458 ('java/io/File')
	ptr @.tmr.459, ; 459 ('java/io/FileDescriptor')
	ptr @.tmr.460, ; 460 ('java/io/FileInputStream')
	ptr @.tmr.461, ; 461 ('java/io/FileNotFoundException')
	ptr @.tmr.462, ; 462 ('java/io/Closeable')
	ptr @.tmr.463, ; 463 ('java/io/InputStream')
	ptr @.tmr.464, ; 464 ('java/io/InterruptedIOException')
	ptr @.tmr.465, ; 465 ('java/io/IOException')
	ptr @.tmr.466, ; 466 ('java/io/Serializable')
	ptr @.tmr.467, ; 467 ('java/io/OutputStream')
	ptr @.tmr.468, ; 468 ('java/io/PrintWriter')
	ptr @.tmr.469, ; 469 ('java/io/RandomAccessFile')
	ptr @.tmr.470, ; 470 ('java/io/Reader')
	ptr @.tmr.471, ; 471 ('java/io/Writer')
	ptr @.tmr.472, ; 472 ('java/util/List')
	ptr @.tmr.473, ; 473 ('java/util/Comparator')
	ptr @.tmr.474, ; 474 ('java/util/Enumeration')
	ptr @.tmr.475, ; 475 ('java/util/Iterator')
	ptr @.tmr.476, ; 476 ('java/util/ListIterator')
	ptr @.tmr.477, ; 477 ('java/util/SequencedCollection')
	ptr @.tmr.478, ; 478 ('java/util/Spliterator')
	ptr @.tmr.479, ; 479 ('java/util/Locale')
	ptr @.tmr.480, ; 480 ('java/util/Random')
	ptr @.tmr.481, ; 481 ('java/util/function/Consumer')
	ptr @.tmr.482, ; 482 ('java/util/function/Function')
	ptr @.tmr.483, ; 483 ('java/util/function/IntConsumer')
	ptr @.tmr.484, ; 484 ('java/util/function/IntFunction')
	ptr @.tmr.485, ; 485 ('java/util/function/Predicate')
	ptr @.tmr.486, ; 486 ('java/util/function/ToDoubleFunction')
	ptr @.tmr.487, ; 487 ('java/util/function/ToIntFunction')
	ptr @.tmr.488, ; 488 ('java/util/function/ToLongFunction')
	ptr @.tmr.489, ; 489 ('java/util/function/UnaryOperator')
	ptr @.tmr.490, ; 490 ('java/util/concurrent/Executor')
	ptr @.tmr.491, ; 491 ('java/util/concurrent/Future')
	ptr @.tmr.492, ; 492 ('java/util/concurrent/Future$State')
	ptr @.tmr.493, ; 493 ('java/util/concurrent/TimeUnit')
	ptr @.tmr.494, ; 494 ('java/util/concurrent/atomic/AtomicReference')
	ptr @.tmr.495, ; 495 ('java/lang/Boolean')
	ptr @.tmr.496, ; 496 ('java/lang/Byte')
	ptr @.tmr.497, ; 497 ('java/lang/Character')
	ptr @.tmr.498, ; 498 ('java/lang/Class')
	ptr @.tmr.499, ; 499 ('java/lang/ClassNotFoundException')
	ptr @.tmr.500, ; 500 ('java/lang/Double')
	ptr @.tmr.501, ; 501 ('java/lang/Exception')
	ptr @.tmr.502, ; 502 ('java/lang/Float')
	ptr @.tmr.503, ; 503 ('java/lang/CharSequence')
	ptr @.tmr.504, ; 504 ('java/lang/Integer')
	ptr @.tmr.505, ; 505 ('java/lang/Long')
	ptr @.tmr.506, ; 506 ('java/lang/Object')
	ptr @.tmr.507, ; 507 ('mono/java/lang/Runnable')
	ptr @.tmr.508, ; 508 ('java/lang/RuntimeException')
	ptr @.tmr.509, ; 509 ('java/lang/Short')
	ptr @.tmr.510, ; 510 ('java/lang/String')
	ptr @.tmr.511, ; 511 ('java/lang/Thread')
	ptr @.tmr.512, ; 512 ('mono/java/lang/RunnableImplementor')
	ptr @.tmr.513, ; 513 ('java/lang/Throwable')
	ptr @.tmr.514, ; 514 ('java/lang/ClassCastException')
	ptr @.tmr.515, ; 515 ('java/lang/ClassLoader')
	ptr @.tmr.516, ; 516 ('java/lang/Enum')
	ptr @.tmr.517, ; 517 ('java/lang/Error')
	ptr @.tmr.518, ; 518 ('java/lang/Appendable')
	ptr @.tmr.519, ; 519 ('java/lang/AutoCloseable')
	ptr @.tmr.520, ; 520 ('java/lang/Iterable')
	ptr @.tmr.521, ; 521 ('java/lang/IllegalArgumentException')
	ptr @.tmr.522, ; 522 ('java/lang/IllegalStateException')
	ptr @.tmr.523, ; 523 ('java/lang/IndexOutOfBoundsException')
	ptr @.tmr.524, ; 524 ('java/lang/Runnable')
	ptr @.tmr.525, ; 525 ('java/lang/System')
	ptr @.tmr.526, ; 526 ('java/lang/LinkageError')
	ptr @.tmr.527, ; 527 ('java/lang/NoClassDefFoundError')
	ptr @.tmr.528, ; 528 ('java/lang/NullPointerException')
	ptr @.tmr.529, ; 529 ('java/lang/Number')
	ptr @.tmr.530, ; 530 ('java/lang/ReflectiveOperationException')
	ptr @.tmr.531, ; 531 ('java/lang/SecurityException')
	ptr @.tmr.532, ; 532 ('java/lang/StackTraceElement')
	ptr @.tmr.533, ; 533 ('java/lang/UnsupportedOperationException')
	ptr @.tmr.534, ; 534 ('java/lang/Void')
	ptr @.tmr.535, ; 535 ('java/lang/ref/Reference')
	ptr @.tmr.536, ; 536 ('java/lang/ref/WeakReference')
	ptr @.tmr.537, ; 537 ('java/lang/annotation/Annotation')
	ptr @.tmr.538, ; 538 ('mono/android/TypeManager')
	ptr @.tmr.539, ; 539 ('com/google/android/gms/common/GoogleApiAvailability')
	ptr @.tmr.540, ; 540 ('com/google/android/gms/common/api/internal/ApiKey')
	ptr @.tmr.541, ; 541 ('com/google/android/gms/common/api/internal/BaseImplementation')
	ptr @.tmr.542, ; 542 ('com/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl')
	ptr @.tmr.543, ; 543 ('com/google/android/gms/common/api/internal/BasePendingResult')
	ptr @.tmr.544, ; 544 ('com/google/android/gms/common/api/internal/GoogleApiManager')
	ptr @.tmr.545, ; 545 ('com/google/android/gms/common/api/internal/ConnectionCallbacks')
	ptr @.tmr.546, ; 546 ('com/google/android/gms/common/api/internal/OnConnectionFailedListener')
	ptr @.tmr.547, ; 547 ('com/google/android/gms/common/api/internal/RemoteCall')
	ptr @.tmr.548, ; 548 ('com/google/android/gms/common/api/internal/SignInConnectionListener')
	ptr @.tmr.549, ; 549 ('com/google/android/gms/common/api/internal/ListenerHolder')
	ptr @.tmr.550, ; 550 ('com/google/android/gms/common/api/internal/ListenerHolder$ListenerKey')
	ptr @.tmr.551, ; 551 ('com/google/android/gms/common/api/internal/ListenerHolder$Notifier')
	ptr @.tmr.552, ; 552 ('com/google/android/gms/common/api/internal/RegisterListenerMethod')
	ptr @.tmr.553, ; 553 ('com/google/android/gms/common/api/internal/RegistrationMethods')
	ptr @.tmr.554, ; 554 ('com/google/android/gms/common/api/internal/RegistrationMethods$Builder')
	ptr @.tmr.555, ; 555 ('com/google/android/gms/common/api/internal/TaskApiCall')
	ptr @.tmr.556, ; 556 ('com/google/android/gms/common/api/internal/TaskApiCall$Builder')
	ptr @.tmr.557, ; 557 ('com/google/android/gms/common/api/internal/UnregisterListenerMethod')
	ptr @.tmr.558, ; 558 ('com/google/android/gms/common/api/internal/zaaa')
	ptr @.tmr.559, ; 559 ('com/google/android/gms/common/api/internal/zaab')
	ptr @.tmr.560, ; 560 ('com/google/android/gms/common/api/internal/zabk')
	ptr @.tmr.561, ; 561 ('com/google/android/gms/common/api/internal/zabr')
	ptr @.tmr.562, ; 562 ('com/google/android/gms/common/api/internal/zabs')
	ptr @.tmr.563, ; 563 ('com/google/android/gms/common/api/internal/zacs')
	ptr @.tmr.564, ; 564 ('com/google/android/gms/common/api/internal/zai')
	ptr @.tmr.565, ; 565 ('com/google/android/gms/common/api/internal/zal')
	ptr @.tmr.566, ; 566 ('com/google/android/gms/common/api/internal/zap')
	ptr @.tmr.567, ; 567 ('com/google/android/gms/common/api/GoogleApiClient')
	ptr @.tmr.568, ; 568 ('com/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks')
	ptr @.tmr.569, ; 569 ('com/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener')
	ptr @.tmr.570, ; 570 ('com/google/android/gms/common/api/Api')
	ptr @.tmr.571, ; 571 ('com/google/android/gms/common/api/Api$AbstractClientBuilder')
	ptr @.tmr.572, ; 572 ('com/google/android/gms/common/api/Api$AnyClient')
	ptr @.tmr.573, ; 573 ('com/google/android/gms/common/api/Api$AnyClientKey')
	ptr @.tmr.574, ; 574 ('com/google/android/gms/common/api/Api$BaseClientBuilder')
	ptr @.tmr.575, ; 575 ('com/google/android/gms/common/api/Api$Client')
	ptr @.tmr.576, ; 576 ('com/google/android/gms/common/api/Api$ClientKey')
	ptr @.tmr.577, ; 577 ('com/google/android/gms/common/api/GoogleApi')
	ptr @.tmr.578, ; 578 ('com/google/android/gms/common/api/GoogleApi$Settings')
	ptr @.tmr.579, ; 579 ('com/google/android/gms/common/api/HasApiKey')
	ptr @.tmr.580, ; 580 ('com/google/android/gms/common/api/PendingResult')
	ptr @.tmr.581, ; 581 ('com/google/android/gms/common/api/PendingResult$StatusListener')
	ptr @.tmr.582, ; 582 ('mono/com/google/android/gms/common/api/PendingResult_StatusListenerImplementor')
	ptr @.tmr.583, ; 583 ('com/google/android/gms/common/api/ResultTransform')
	ptr @.tmr.584, ; 584 ('com/google/android/gms/common/api/TransformedResult')
	ptr @.tmr.585, ; 585 ('com/google/android/material/shape/CornerTreatment')
	ptr @.tmr.586, ; 586 ('com/google/android/material/shape/EdgeTreatment')
	ptr @.tmr.587, ; 587 ('com/google/android/material/shape/CornerSize')
	ptr @.tmr.588, ; 588 ('com/google/android/material/shape/MaterialShapeDrawable')
	ptr @.tmr.589, ; 589 ('com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState')
	ptr @.tmr.590, ; 590 ('com/google/android/material/shape/ShapeAppearanceModel')
	ptr @.tmr.591, ; 591 ('com/google/android/material/shape/ShapeAppearanceModel$Builder')
	ptr @.tmr.592, ; 592 ('com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator')
	ptr @.tmr.593, ; 593 ('com/google/android/material/shape/ShapePath')
	ptr @.tmr.594, ; 594 ('com/google/android/material/shape/ShapePathModel')
	ptr @.tmr.595, ; 595 ('com/google/android/material/imageview/ShapeableImageView')
	ptr @.tmr.596, ; 596 ('com/google/android/material/elevation/ElevationOverlayProvider')
	ptr @.tmr.597, ; 597 ('com/google/android/material/dialog/MaterialAlertDialogBuilder')
	ptr @.tmr.598, ; 598 ('com/google/android/material/checkbox/MaterialCheckBox')
	ptr @.tmr.599, ; 599 ('com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener')
	ptr @.tmr.600, ; 600 ('mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor')
	ptr @.tmr.601, ; 601 ('com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener')
	ptr @.tmr.602, ; 602 ('mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor')
	ptr @.tmr.603, ; 603 ('com/google/android/material/button/MaterialButton')
	ptr @.tmr.604, ; 604 ('com/google/android/material/button/MaterialButton$OnCheckedChangeListener')
	ptr @.tmr.605, ; 605 ('mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor')
	ptr @.tmr.606, ; 606 ('com/google/android/material/bottomsheet/BottomSheetBehavior')
	ptr @.tmr.607, ; 607 ('com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback')
	ptr @.tmr.608, ; 608 ('com/google/android/material/bottomsheet/BottomSheetDialog')
	ptr @.tmr.609, ; 609 ('com/google/android/material/badge/BadgeDrawable')
	ptr @.tmr.610, ; 610 ('com/google/android/material/navigation/NavigationBarView')
	ptr @.tmr.611, ; 611 ('com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener')
	ptr @.tmr.612, ; 612 ('mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor')
	ptr @.tmr.613, ; 613 ('com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener')
	ptr @.tmr.614, ; 614 ('mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor')
	ptr @.tmr.615, ; 615 ('com/google/android/material/navigation/NavigationBarItemView')
	ptr @.tmr.616, ; 616 ('com/google/android/material/navigation/NavigationBarMenuView')
	ptr @.tmr.617, ; 617 ('com/google/android/material/navigation/NavigationBarPresenter')
	ptr @.tmr.618, ; 618 ('com/google/android/material/navigation/NavigationView')
	ptr @.tmr.619, ; 619 ('com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener')
	ptr @.tmr.620, ; 620 ('mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor')
	ptr @.tmr.621, ; 621 ('com/google/android/material/tabs/TabLayout')
	ptr @.tmr.622, ; 622 ('com/google/android/material/tabs/TabLayout$TabView')
	ptr @.tmr.623, ; 623 ('com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener')
	ptr @.tmr.624, ; 624 ('mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor')
	ptr @.tmr.625, ; 625 ('com/google/android/material/tabs/TabLayout$OnTabSelectedListener')
	ptr @.tmr.626, ; 626 ('com/google/android/material/tabs/TabLayout$Tab')
	ptr @.tmr.627, ; 627 ('com/google/android/material/tabs/TabLayoutMediator')
	ptr @.tmr.628, ; 628 ('com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy')
	ptr @.tmr.629, ; 629 ('com/google/android/material/internal/StaticLayoutBuilderConfigurer')
	ptr @.tmr.630, ; 630 ('com/google/android/material/internal/ScrimInsetsFrameLayout')
	ptr @.tmr.631, ; 631 ('com/google/android/material/bottomnavigation/BottomNavigationItemView')
	ptr @.tmr.632, ; 632 ('com/google/android/material/bottomnavigation/BottomNavigationMenuView')
	ptr @.tmr.633, ; 633 ('com/google/android/material/bottomnavigation/BottomNavigationView')
	ptr @.tmr.634, ; 634 ('com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener')
	ptr @.tmr.635, ; 635 ('com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener')
	ptr @.tmr.636, ; 636 ('com/google/android/material/appbar/CollapsingToolbarLayout')
	ptr @.tmr.637, ; 637 ('com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer')
	ptr @.tmr.638, ; 638 ('com/google/android/material/appbar/AppBarLayout')
	ptr @.tmr.639, ; 639 ('com/google/android/material/appbar/AppBarLayout$BaseBehavior')
	ptr @.tmr.640, ; 640 ('com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback')
	ptr @.tmr.641, ; 641 ('com/google/android/material/appbar/AppBarLayout$Behavior')
	ptr @.tmr.642, ; 642 ('com/google/android/material/appbar/AppBarLayout$ChildScrollEffect')
	ptr @.tmr.643, ; 643 ('com/google/android/material/appbar/AppBarLayout$LayoutParams')
	ptr @.tmr.644, ; 644 ('com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener')
	ptr @.tmr.645, ; 645 ('mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor')
	ptr @.tmr.646, ; 646 ('com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener')
	ptr @.tmr.647, ; 647 ('mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor')
	ptr @.tmr.648, ; 648 ('com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior')
	ptr @.tmr.649, ; 649 ('com/google/android/material/appbar/HeaderBehavior')
	ptr @.tmr.650, ; 650 ('com/google/android/material/appbar/HeaderScrollingViewBehavior')
	ptr @.tmr.651, ; 651 ('com/google/android/material/appbar/MaterialToolbar')
	ptr @.tmr.652, ; 652 ('com/google/android/material/appbar/ViewOffsetBehavior')
	ptr @.tmr.653, ; 653 ('androidx/navigation/fragment/FragmentNavigator')
	ptr @.tmr.654, ; 654 ('androidx/navigation/fragment/FragmentNavigator$Destination')
	ptr @.tmr.655, ; 655 ('androidx/navigation/fragment/NavHostFragment')
	ptr @.tmr.656, ; 656 ('androidx/navigation/NavDirections')
	ptr @.tmr.657, ; 657 ('androidx/navigation/NavAction')
	ptr @.tmr.658, ; 658 ('androidx/navigation/NavArgument')
	ptr @.tmr.659, ; 659 ('androidx/navigation/NavBackStackEntry')
	ptr @.tmr.660, ; 660 ('androidx/navigation/NavDeepLink')
	ptr @.tmr.661, ; 661 ('androidx/navigation/NavDeepLinkRequest')
	ptr @.tmr.662, ; 662 ('androidx/navigation/NavDestination')
	ptr @.tmr.663, ; 663 ('androidx/navigation/NavDestination$DeepLinkMatch')
	ptr @.tmr.664, ; 664 ('androidx/navigation/NavGraph')
	ptr @.tmr.665, ; 665 ('androidx/navigation/NavGraphNavigator')
	ptr @.tmr.666, ; 666 ('androidx/navigation/Navigator')
	ptr @.tmr.667, ; 667 ('androidx/navigation/Navigator$Extras')
	ptr @.tmr.668, ; 668 ('androidx/navigation/NavigatorProvider')
	ptr @.tmr.669, ; 669 ('androidx/navigation/NavigatorState')
	ptr @.tmr.670, ; 670 ('androidx/navigation/NavOptions')
	ptr @.tmr.671, ; 671 ('androidx/navigation/NavType')
	ptr @.tmr.672, ; 672 ('androidx/navigation/internal/NavContext')
	ptr @.tmr.673, ; 673 ('androidx/swiperefreshlayout/widget/SwipeRefreshLayout')
	ptr @.tmr.674, ; 674 ('androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback')
	ptr @.tmr.675, ; 675 ('androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener')
	ptr @.tmr.676, ; 676 ('mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor')
	ptr @.tmr.677, ; 677 ('androidx/navigation/ui/AppBarConfiguration')
	ptr @.tmr.678, ; 678 ('androidx/navigation/ui/AppBarConfiguration$Builder')
	ptr @.tmr.679, ; 679 ('androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener')
	ptr @.tmr.680, ; 680 ('androidx/navigation/ui/NavigationUI')
	ptr @.tmr.681, ; 681 ('com/google/android/gms/dynamic/IObjectWrapper')
	ptr @.tmr.682, ; 682 ('com/google/android/gms/common/ConnectionResult')
	ptr @.tmr.683, ; 683 ('com/google/android/gms/common/Feature')
	ptr @.tmr.684, ; 684 ('com/google/android/gms/common/GoogleApiAvailabilityLight')
	ptr @.tmr.685, ; 685 ('com/google/android/gms/common/util/BiConsumer')
	ptr @.tmr.686, ; 686 ('com/google/android/gms/common/internal/IAccountAccessor')
	ptr @.tmr.687, ; 687 ('com/google/android/gms/common/internal/ICancelToken')
	ptr @.tmr.688, ; 688 ('com/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable')
	ptr @.tmr.689, ; 689 ('com/google/android/gms/common/api/Result')
	ptr @.tmr.690, ; 690 ('com/google/android/gms/common/api/ResultCallback')
	ptr @.tmr.691, ; 691 ('com/google/android/gms/common/api/Response')
	ptr @.tmr.692, ; 692 ('com/google/android/gms/common/api/ResultCallbacks')
	ptr @.tmr.693, ; 693 ('com/google/android/gms/common/api/Scope')
	ptr @.tmr.694, ; 694 ('com/google/android/gms/common/api/Status')
	ptr @.tmr.695, ; 695 ('com/google/android/gms/common/api/internal/LifecycleFragment')
	ptr @.tmr.696, ; 696 ('com/google/android/gms/common/api/internal/StatusExceptionMapper')
	ptr @.tmr.697, ; 697 ('com/google/android/gms/common/api/internal/LifecycleActivity')
	ptr @.tmr.698, ; 698 ('com/google/android/gms/common/api/internal/LifecycleCallback')
	ptr @.tmr.699, ; 699 ('crc643f2b18b2570eaa5a/PlatformGraphicsView')
	ptr @.tmr.700, ; 700 ('androidx/cursoradapter/widget/CursorAdapter')
	ptr @.tmr.701, ; 701 ('androidx/lifecycle/ViewModelStoreOwner')
	ptr @.tmr.702, ; 702 ('androidx/lifecycle/ViewModel')
	ptr @.tmr.703, ; 703 ('androidx/lifecycle/ViewModelProvider')
	ptr @.tmr.704, ; 704 ('androidx/lifecycle/ViewModelProvider$Factory$Companion')
	ptr @.tmr.705, ; 705 ('androidx/lifecycle/ViewModelProvider$Factory')
	ptr @.tmr.706, ; 706 ('androidx/lifecycle/ViewModelStore')
	ptr @.tmr.707, ; 707 ('androidx/lifecycle/viewmodel/CreationExtras')
	ptr @.tmr.708, ; 708 ('androidx/lifecycle/viewmodel/CreationExtras$Key')
	ptr @.tmr.709, ; 709 ('androidx/lifecycle/viewmodel/ViewModelInitializer')
	ptr @.tmr.710, ; 710 ('androidx/cardview/widget/CardView')
	ptr @.tmr.711, ; 711 ('crc6488302ad6e9e4df1a/ImageLoaderResultCallback')
	ptr @.tmr.712, ; 712 ('crc6488302ad6e9e4df1a/ImageLoaderCallback')
	ptr @.tmr.713, ; 713 ('crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1')
	ptr @.tmr.714, ; 714 ('crc6488302ad6e9e4df1a/MauiAppCompatActivity')
	ptr @.tmr.715, ; 715 ('crc6488302ad6e9e4df1a/MauiAppCompatActivity_PredictiveBackCallback')
	ptr @.tmr.716, ; 716 ('crc6488302ad6e9e4df1a/MauiApplication')
	ptr @.tmr.717, ; 717 ('crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks')
	ptr @.tmr.718, ; 718 ('com/microsoft/maui/HybridJavaScriptInterface')
	ptr @.tmr.719, ; 719 ('com/microsoft/maui/ImageLoaderCallback')
	ptr @.tmr.720, ; 720 ('com/microsoft/maui/PlatformShadowDrawable')
	ptr @.tmr.721, ; 721 ('com/microsoft/maui/MauiViewGroup')
	ptr @.tmr.722, ; 722 ('com/microsoft/maui/PlatformAppCompatTextView')
	ptr @.tmr.723, ; 723 ('com/microsoft/maui/PlatformContentViewGroup')
	ptr @.tmr.724, ; 724 ('com/microsoft/maui/PlatformDispatcher')
	ptr @.tmr.725, ; 725 ('com/microsoft/maui/PlatformFontSpan')
	ptr @.tmr.726, ; 726 ('com/microsoft/maui/PlatformInterop')
	ptr @.tmr.727, ; 727 ('com/microsoft/maui/PlatformLineHeightSpan')
	ptr @.tmr.728, ; 728 ('com/microsoft/maui/PlatformLogger')
	ptr @.tmr.729, ; 729 ('com/microsoft/maui/PlatformMauiAppCompatActivity')
	ptr @.tmr.730, ; 730 ('com/microsoft/maui/PlatformPaintType')
	ptr @.tmr.731, ; 731 ('com/microsoft/maui/PlatformViewGroup')
	ptr @.tmr.732, ; 732 ('com/microsoft/maui/PlatformWrapperView')
	ptr @.tmr.733, ; 733 ('crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper')
	ptr @.tmr.734, ; 734 ('crc6452ffdc5b34af3a0f/BorderDrawable')
	ptr @.tmr.735, ; 735 ('crc6452ffdc5b34af3a0f/ContainerView')
	ptr @.tmr.736, ; 736 ('crc6452ffdc5b34af3a0f/ContentViewGroup')
	ptr @.tmr.737, ; 737 ('crc6452ffdc5b34af3a0f/FragmentManagerExtensions_CallBacks')
	ptr @.tmr.738, ; 738 ('crc6452ffdc5b34af3a0f/LayoutViewGroup')
	ptr @.tmr.739, ; 739 ('crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener')
	ptr @.tmr.740, ; 740 ('crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat')
	ptr @.tmr.741, ; 741 ('crc6452ffdc5b34af3a0f/MauiAppCompatEditText')
	ptr @.tmr.742, ; 742 ('crc6452ffdc5b34af3a0f/MauiBoxView')
	ptr @.tmr.743, ; 743 ('crc6452ffdc5b34af3a0f/MauiDatePicker')
	ptr @.tmr.744, ; 744 ('crc6452ffdc5b34af3a0f/MauiHybridWebView')
	ptr @.tmr.745, ; 745 ('crc6452ffdc5b34af3a0f/MauiHybridWebViewClient')
	ptr @.tmr.746, ; 746 ('crc6452ffdc5b34af3a0f/MauiLayerDrawable')
	ptr @.tmr.747, ; 747 ('crc6452ffdc5b34af3a0f/MauiMaterialButton')
	ptr @.tmr.748, ; 748 ('crc6452ffdc5b34af3a0f/MauiMaterialButton_MauiResizableDrawable')
	ptr @.tmr.749, ; 749 ('crc6452ffdc5b34af3a0f/MauiMaterialContextThemeWrapper')
	ptr @.tmr.750, ; 750 ('crc6452ffdc5b34af3a0f/MauiPageControl')
	ptr @.tmr.751, ; 751 ('crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener')
	ptr @.tmr.752, ; 752 ('crc6452ffdc5b34af3a0f/MauiPicker')
	ptr @.tmr.753, ; 753 ('crc6452ffdc5b34af3a0f/MauiPickerBase')
	ptr @.tmr.754, ; 754 ('crc6452ffdc5b34af3a0f/MauiScrollView')
	ptr @.tmr.755, ; 755 ('crc6452ffdc5b34af3a0f/MauiHorizontalScrollView')
	ptr @.tmr.756, ; 756 ('crc6452ffdc5b34af3a0f/MauiSearchView')
	ptr @.tmr.757, ; 757 ('crc6452ffdc5b34af3a0f/MauiShapeableImageView')
	ptr @.tmr.758, ; 758 ('crc6452ffdc5b34af3a0f/MauiShapeView')
	ptr @.tmr.759, ; 759 ('crc6452ffdc5b34af3a0f/MauiStepper')
	ptr @.tmr.760, ; 760 ('crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout')
	ptr @.tmr.761, ; 761 ('crc6452ffdc5b34af3a0f/MauiSwipeView')
	ptr @.tmr.762, ; 762 ('crc6452ffdc5b34af3a0f/MauiTextView')
	ptr @.tmr.763, ; 763 ('crc6452ffdc5b34af3a0f/MauiTimePicker')
	ptr @.tmr.764, ; 764 ('crc6452ffdc5b34af3a0f/MauiWebChromeClient')
	ptr @.tmr.765, ; 765 ('crc6452ffdc5b34af3a0f/MauiWebView')
	ptr @.tmr.766, ; 766 ('crc6452ffdc5b34af3a0f/MauiWebViewClient')
	ptr @.tmr.767, ; 767 ('crc6452ffdc5b34af3a0f/MauiWindowInsetListener')
	ptr @.tmr.768, ; 768 ('microsoft/maui/platform/MauiNavHostFragment')
	ptr @.tmr.769, ; 769 ('crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment')
	ptr @.tmr.770, ; 770 ('crc6452ffdc5b34af3a0f/NavigationViewFragment')
	ptr @.tmr.771, ; 771 ('crc6452ffdc5b34af3a0f/ScopedFragment')
	ptr @.tmr.772, ; 772 ('crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks')
	ptr @.tmr.773, ; 773 ('crc6452ffdc5b34af3a0f/ViewFragment')
	ptr @.tmr.774, ; 774 ('crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView')
	ptr @.tmr.775, ; 775 ('crc6452ffdc5b34af3a0f/StepperHandlerHolder')
	ptr @.tmr.776, ; 776 ('crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener')
	ptr @.tmr.777, ; 777 ('crc6452ffdc5b34af3a0f/SwipeViewPager')
	ptr @.tmr.778, ; 778 ('crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult')
	ptr @.tmr.779, ; 779 ('crc6452ffdc5b34af3a0f/WrapperView')
	ptr @.tmr.780, ; 780 ('crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener')
	ptr @.tmr.781, ; 781 ('crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener')
	ptr @.tmr.782, ; 782 ('crc64fcf28c0e24b4cc31/HybridWebViewHandler_HybridWebViewJavaScriptInterface')
	ptr @.tmr.783, ; 783 ('crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener')
	ptr @.tmr.784, ; 784 ('crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener')
	ptr @.tmr.785, ; 785 ('crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener')
	ptr @.tmr.786, ; 786 ('crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick')
	ptr @.tmr.787, ; 787 ('crc64b5e713d400f589b7/LinearGradientShaderFactory')
	ptr @.tmr.788, ; 788 ('crc64b5e713d400f589b7/RadialGradientShaderFactory')
	ptr @.tmr.789, ; 789 ('crc64b5e713d400f589b7/MauiDrawable')
	ptr @.tmr.790, ; 790 ('crc64a096dc44ad241142/PlatformTicker_DurationScaleListener')
	ptr @.tmr.791, ; 791 ('androidx/activity/BackEventCompat')
	ptr @.tmr.792, ; 792 ('androidx/activity/ComponentActivity')
	ptr @.tmr.793, ; 793 ('androidx/activity/ComponentDialog')
	ptr @.tmr.794, ; 794 ('androidx/activity/FullyDrawnReporter')
	ptr @.tmr.795, ; 795 ('androidx/activity/OnBackPressedCallback')
	ptr @.tmr.796, ; 796 ('androidx/activity/OnBackPressedDispatcher')
	ptr @.tmr.797, ; 797 ('androidx/activity/result/ActivityResultLauncher')
	ptr @.tmr.798, ; 798 ('androidx/activity/result/ActivityResultRegistry')
	ptr @.tmr.799, ; 799 ('androidx/activity/result/ActivityResultCallback')
	ptr @.tmr.800, ; 800 ('androidx/activity/result/PickVisualMediaRequest')
	ptr @.tmr.801, ; 801 ('androidx/activity/result/PickVisualMediaRequest$Builder')
	ptr @.tmr.802, ; 802 ('androidx/activity/result/contract/ActivityResultContract')
	ptr @.tmr.803, ; 803 ('androidx/activity/result/contract/ActivityResultContract$SynchronousResult')
	ptr @.tmr.804, ; 804 ('androidx/activity/result/contract/ActivityResultContracts')
	ptr @.tmr.805, ; 805 ('androidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia')
	ptr @.tmr.806, ; 806 ('androidx/activity/result/contract/ActivityResultContracts$PickVisualMedia')
	ptr @.tmr.807, ; 807 ('androidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab')
	ptr @.tmr.808, ; 808 ('androidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly')
	ptr @.tmr.809, ; 809 ('androidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VideoOnly')
	ptr @.tmr.810, ; 810 ('androidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType')
	ptr @.tmr.811, ; 811 ('androidx/activity/contextaware/OnContextAvailableListener')
	ptr @.tmr.812, ; 812 ('mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor')
	ptr @.tmr.813, ; 813 ('androidx/loader/content/Loader')
	ptr @.tmr.814, ; 814 ('androidx/loader/content/Loader$OnLoadCanceledListener')
	ptr @.tmr.815, ; 815 ('androidx/loader/content/Loader$OnLoadCompleteListener')
	ptr @.tmr.816, ; 816 ('androidx/loader/app/LoaderManager')
	ptr @.tmr.817, ; 817 ('androidx/loader/app/LoaderManager$LoaderCallbacks')
	ptr @.tmr.818, ; 818 ('androidx/lifecycle/Observer')
	ptr @.tmr.819, ; 819 ('androidx/lifecycle/LiveData')
	ptr @.tmr.820, ; 820 ('androidx/lifecycle/MutableLiveData')
	ptr @.tmr.821, ; 821 ('com/google/android/gms/location/LocationServices')
	ptr @.tmr.822, ; 822 ('crc64e95e69e34d869711/LocationCallback')
	ptr @.tmr.823, ; 823 ('com/google/android/gms/location/FusedLocationProviderClient')
	ptr @.tmr.824, ; 824 ('com/google/android/gms/location/GeofencingClient')
	ptr @.tmr.825, ; 825 ('com/google/android/gms/location/SettingsClient')
	ptr @.tmr.826, ; 826 ('com/google/android/gms/location/CurrentLocationRequest')
	ptr @.tmr.827, ; 827 ('com/google/android/gms/location/DeviceOrientation')
	ptr @.tmr.828, ; 828 ('com/google/android/gms/location/DeviceOrientationRequest')
	ptr @.tmr.829, ; 829 ('com/google/android/gms/location/GeofencingRequest')
	ptr @.tmr.830, ; 830 ('com/google/android/gms/location/GeofencingRequest$Builder')
	ptr @.tmr.831, ; 831 ('com/google/android/gms/location/DeviceOrientationListener')
	ptr @.tmr.832, ; 832 ('com/google/android/gms/location/FusedLocationProviderApi')
	ptr @.tmr.833, ; 833 ('com/google/android/gms/location/FusedOrientationProviderClient')
	ptr @.tmr.834, ; 834 ('com/google/android/gms/location/Geofence$Builder')
	ptr @.tmr.835, ; 835 ('com/google/android/gms/location/Geofence')
	ptr @.tmr.836, ; 836 ('com/google/android/gms/location/GeofencingApi')
	ptr @.tmr.837, ; 837 ('com/google/android/gms/location/LocationListener')
	ptr @.tmr.838, ; 838 ('com/google/android/gms/location/SettingsApi')
	ptr @.tmr.839, ; 839 ('com/google/android/gms/location/LastLocationRequest')
	ptr @.tmr.840, ; 840 ('com/google/android/gms/location/LocationAvailability')
	ptr @.tmr.841, ; 841 ('com/google/android/gms/location/LocationCallback')
	ptr @.tmr.842, ; 842 ('com/google/android/gms/location/LocationRequest')
	ptr @.tmr.843, ; 843 ('com/google/android/gms/location/LocationResult')
	ptr @.tmr.844, ; 844 ('com/google/android/gms/location/LocationSettingsRequest')
	ptr @.tmr.845, ; 845 ('com/google/android/gms/location/LocationSettingsResponse')
	ptr @.tmr.846, ; 846 ('com/google/android/gms/location/LocationSettingsResult')
	ptr @.tmr.847, ; 847 ('com/google/android/gms/location/LocationSettingsStates')
	ptr @.tmr.848, ; 848 ('androidx/navigation/NavController')
	ptr @.tmr.849, ; 849 ('androidx/navigation/NavController$OnDestinationChangedListener')
	ptr @.tmr.850, ; 850 ('mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor')
	ptr @.tmr.851, ; 851 ('androidx/navigation/NavDeepLinkBuilder')
	ptr @.tmr.852, ; 852 ('androidx/navigation/NavHostController')
	ptr @.tmr.853, ; 853 ('androidx/navigation/NavInflater')
	ptr @.tmr.854, ; 854 ('androidx/customview/widget/Openable')
	ptr @.tmr.855, ; 855 ('[Ljava/lang/Object;')
	ptr @.tmr.856, ; 856 ('[Z')
	ptr @.tmr.857, ; 857 ('[B')
	ptr @.tmr.858, ; 858 ('[C')
	ptr @.tmr.859, ; 859 ('[S')
	ptr @.tmr.860, ; 860 ('[I')
	ptr @.tmr.861, ; 861 ('[J')
	ptr @.tmr.862, ; 862 ('[F')
	ptr @.tmr.863, ; 863 ('[D')
	ptr @.tmr.864, ; 864 ('net/dot/jni/internal/JavaProxyObject')
	ptr @.tmr.865, ; 865 ('net/dot/jni/internal/JavaProxyThrowable')
	ptr @.tmr.866, ; 866 ('net/dot/jni/ManagedPeer')
	ptr @.tmr.867, ; 867 ('crc6468b6408a11370c2f/WebAuthenticatorIntermediateActivity')
	ptr @.tmr.868, ; 868 ('microsoft/maui/essentials/fileProvider')
	ptr @.tmr.869, ; 869 ('crc64e53d2f592022988e/ConnectivityBroadcastReceiver')
	ptr @.tmr.870, ; 870 ('crc64ba438d8f48cf7e75/ActivityResultCallback_1')
	ptr @.tmr.871, ; 871 ('crc64ba438d8f48cf7e75/ActivityLifecycleContextListener')
	ptr @.tmr.872, ; 872 ('crc64ba438d8f48cf7e75/IntermediateActivity')
	ptr @.tmr.873, ; 873 ('crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener')
	ptr @.tmr.874, ; 874 ('crc640a8d9a12ddbf2cf2/BatteryBroadcastReceiver')
	ptr @.tmr.875, ; 875 ('crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver')
	ptr @.tmr.876, ; 876 ('crc64f728827fec74e9c3/TapWindowTracker_GestureListener')
	ptr @.tmr.877, ; 877 ('crc64f728827fec74e9c3/Toolbar_Container')
	ptr @.tmr.878, ; 878 ('crc64338477404e88479c/ColorChangeRevealDrawable')
	ptr @.tmr.879, ; 879 ('crc64338477404e88479c/ControlsAccessibilityDelegate')
	ptr @.tmr.880, ; 880 ('crc64338477404e88479c/DragAndDropGestureHandler')
	ptr @.tmr.881, ; 881 ('crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData')
	ptr @.tmr.882, ; 882 ('crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView')
	ptr @.tmr.883, ; 883 ('crc64338477404e88479c/FragmentContainer')
	ptr @.tmr.884, ; 884 ('crc64338477404e88479c/GenericAnimatorListener')
	ptr @.tmr.885, ; 885 ('crc64338477404e88479c/GenericGlobalLayoutListener')
	ptr @.tmr.886, ; 886 ('crc64338477404e88479c/GenericMenuClickListener')
	ptr @.tmr.887, ; 887 ('crc64338477404e88479c/GradientStrokeDrawable')
	ptr @.tmr.888, ; 888 ('crc64338477404e88479c/InnerGestureListener')
	ptr @.tmr.889, ; 889 ('crc64338477404e88479c/InnerScaleListener')
	ptr @.tmr.890, ; 890 ('crc64338477404e88479c/MauiViewPager')
	ptr @.tmr.891, ; 891 ('crc64338477404e88479c/MultiPageFragmentStateAdapter_1')
	ptr @.tmr.892, ; 892 ('crc64338477404e88479c/PointerGestureHandler')
	ptr @.tmr.893, ; 893 ('crc64338477404e88479c/TapAndPanGestureDetector')
	ptr @.tmr.894, ; 894 ('crc64338477404e88479c/ModalNavigationManager_ModalFragment')
	ptr @.tmr.895, ; 895 ('crc64338477404e88479c/ModalNavigationManager_ModalFragment_CustomComponentDialog')
	ptr @.tmr.896, ; 896 ('crc64338477404e88479c/ModalNavigationManager_ModalFragment_CustomComponentDialog_CallBack')
	ptr @.tmr.897, ; 897 ('crc640ec207abc449b2ca/ContainerView')
	ptr @.tmr.898, ; 898 ('crc640ec207abc449b2ca/CustomFrameLayout')
	ptr @.tmr.899, ; 899 ('crc640ec207abc449b2ca/ShellContentFragment')
	ptr @.tmr.900, ; 900 ('crc640ec207abc449b2ca/ShellFlyoutLayout')
	ptr @.tmr.901, ; 901 ('crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter')
	ptr @.tmr.902, ; 902 ('crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout')
	ptr @.tmr.903, ; 903 ('crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder')
	ptr @.tmr.904, ; 904 ('crc640ec207abc449b2ca/ShellFlyoutRenderer')
	ptr @.tmr.905, ; 905 ('crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer')
	ptr @.tmr.906, ; 906 ('crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_WindowsListener')
	ptr @.tmr.907, ; 907 ('crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer')
	ptr @.tmr.908, ; 908 ('crc640ec207abc449b2ca/RecyclerViewContainer')
	ptr @.tmr.909, ; 909 ('crc640ec207abc449b2ca/ScrollLayoutManager')
	ptr @.tmr.910, ; 910 ('crc640ec207abc449b2ca/ShellFragmentContainer')
	ptr @.tmr.911, ; 911 ('crc640ec207abc449b2ca/ShellFragmentStateAdapter')
	ptr @.tmr.912, ; 912 ('crc640ec207abc449b2ca/ShellItemRenderer')
	ptr @.tmr.913, ; 913 ('crc640ec207abc449b2ca/ShellItemRendererBase')
	ptr @.tmr.914, ; 914 ('crc640ec207abc449b2ca/ShellPageContainer')
	ptr @.tmr.915, ; 915 ('crc640ec207abc449b2ca/ShellSearchView')
	ptr @.tmr.916, ; 916 ('crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper')
	ptr @.tmr.917, ; 917 ('crc640ec207abc449b2ca/ShellSearchViewAdapter')
	ptr @.tmr.918, ; 918 ('crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter')
	ptr @.tmr.919, ; 919 ('crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper')
	ptr @.tmr.920, ; 920 ('crc640ec207abc449b2ca/ShellSectionRenderer')
	ptr @.tmr.921, ; 921 ('crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged')
	ptr @.tmr.922, ; 922 ('crc640ec207abc449b2ca/ShellToolbarTracker')
	ptr @.tmr.923, ; 923 ('crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable')
	ptr @.tmr.924, ; 924 ('crc649ff77a65592e7d55/TabbedPageManager_TempView')
	ptr @.tmr.925, ; 925 ('crc649ff77a65592e7d55/TabbedPageManager_Listeners')
	ptr @.tmr.926, ; 926 ('crc645d80431ce5f73f11/CarouselViewAdapter_2')
	ptr @.tmr.927, ; 927 ('crc645d80431ce5f73f11/EmptyViewAdapter')
	ptr @.tmr.928, ; 928 ('crc645d80431ce5f73f11/GroupableItemsViewAdapter_2')
	ptr @.tmr.929, ; 929 ('crc645d80431ce5f73f11/ItemsViewAdapter_2')
	ptr @.tmr.930, ; 930 ('crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2')
	ptr @.tmr.931, ; 931 ('crc645d80431ce5f73f11/SelectableItemsViewAdapter_2')
	ptr @.tmr.932, ; 932 ('crc645d80431ce5f73f11/StructuredItemsViewAdapter_2')
	ptr @.tmr.933, ; 933 ('crc645d80431ce5f73f11/CarouselSpacingItemDecoration')
	ptr @.tmr.934, ; 934 ('crc645d80431ce5f73f11/CarouselViewOnScrollListener')
	ptr @.tmr.935, ; 935 ('crc645d80431ce5f73f11/DataChangeObserver')
	ptr @.tmr.936, ; 936 ('crc645d80431ce5f73f11/GridLayoutSpanSizeLookup')
	ptr @.tmr.937, ; 937 ('crc645d80431ce5f73f11/ItemContentView')
	ptr @.tmr.938, ; 938 ('crc645d80431ce5f73f11/MauiCarouselRecyclerView')
	ptr @.tmr.939, ; 939 ('crc645d80431ce5f73f11/MauiCarouselRecyclerView_CarouselViewOnGlobalLayoutListener')
	ptr @.tmr.940, ; 940 ('crc645d80431ce5f73f11/MauiRecyclerView_3')
	ptr @.tmr.941, ; 941 ('crc645d80431ce5f73f11/PositionalSmoothScroller')
	ptr @.tmr.942, ; 942 ('crc645d80431ce5f73f11/RecyclerViewScrollListener_2')
	ptr @.tmr.943, ; 943 ('crc645d80431ce5f73f11/ScrollHelper')
	ptr @.tmr.944, ; 944 ('crc645d80431ce5f73f11/SelectableViewHolder')
	ptr @.tmr.945, ; 945 ('crc645d80431ce5f73f11/SimpleItemTouchHelperCallback')
	ptr @.tmr.946, ; 946 ('crc645d80431ce5f73f11/SimpleViewHolder')
	ptr @.tmr.947, ; 947 ('crc645d80431ce5f73f11/SizedItemContentView')
	ptr @.tmr.948, ; 948 ('crc645d80431ce5f73f11/CenterSnapHelper')
	ptr @.tmr.949, ; 949 ('crc645d80431ce5f73f11/EdgeSnapHelper')
	ptr @.tmr.950, ; 950 ('crc645d80431ce5f73f11/EndSingleSnapHelper')
	ptr @.tmr.951, ; 951 ('crc645d80431ce5f73f11/EndSnapHelper')
	ptr @.tmr.952, ; 952 ('crc645d80431ce5f73f11/NongreedySnapHelper')
	ptr @.tmr.953, ; 953 ('crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener')
	ptr @.tmr.954, ; 954 ('crc645d80431ce5f73f11/SingleSnapHelper')
	ptr @.tmr.955, ; 955 ('crc645d80431ce5f73f11/StartSingleSnapHelper')
	ptr @.tmr.956, ; 956 ('crc645d80431ce5f73f11/StartSnapHelper')
	ptr @.tmr.957, ; 957 ('crc645d80431ce5f73f11/SpacingItemDecoration')
	ptr @.tmr.958, ; 958 ('crc645d80431ce5f73f11/TemplatedItemViewHolder')
	ptr @.tmr.959, ; 959 ('crc645d80431ce5f73f11/TextViewHolder')
	ptr @.tmr.960, ; 960 ('crc64e1fb321c08285b90/FrameRenderer')
	ptr @.tmr.961, ; 961 ('crc64e1fb321c08285b90/ViewRenderer')
	ptr @.tmr.962, ; 962 ('crc64e1fb321c08285b90/ViewRenderer_2')
	ptr @.tmr.963, ; 963 ('crc64e1fb321c08285b90/VisualElementRenderer_1')
	ptr @.tmr.964, ; 964 ('crc64e1fb321c08285b90/BaseCellView')
	ptr @.tmr.965, ; 965 ('crc64e1fb321c08285b90/CellAdapter')
	ptr @.tmr.966, ; 966 ('crc64e1fb321c08285b90/CellRenderer_RendererHolder')
	ptr @.tmr.967, ; 967 ('crc64e1fb321c08285b90/ConditionalFocusLayout')
	ptr @.tmr.968, ; 968 ('crc64e1fb321c08285b90/EntryCellEditText')
	ptr @.tmr.969, ; 969 ('crc64e1fb321c08285b90/EntryCellView')
	ptr @.tmr.970, ; 970 ('crc64e1fb321c08285b90/GroupedListViewAdapter')
	ptr @.tmr.971, ; 971 ('crc64e1fb321c08285b90/ListViewAdapter')
	ptr @.tmr.972, ; 972 ('crc64e1fb321c08285b90/ListViewRenderer')
	ptr @.tmr.973, ; 973 ('crc64e1fb321c08285b90/ListViewRenderer_Container')
	ptr @.tmr.974, ; 974 ('crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling')
	ptr @.tmr.975, ; 975 ('crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener')
	ptr @.tmr.976, ; 976 ('crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector')
	ptr @.tmr.977, ; 977 ('crc64e1fb321c08285b90/SwitchCellView')
	ptr @.tmr.978, ; 978 ('crc64e1fb321c08285b90/TextCellRenderer_TextCellView')
	ptr @.tmr.979, ; 979 ('crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer')
	ptr @.tmr.980, ; 980 ('crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener')
	ptr @.tmr.981, ; 981 ('crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener')
	ptr @.tmr.982, ; 982 ('crc64e1fb321c08285b90/TableViewModelRenderer')
	ptr @.tmr.983, ; 983 ('crc64e1fb321c08285b90/TableViewRenderer')
	ptr @.tmr.984, ; 984 ('androidx/appcompat/graphics/drawable/DrawerArrowDrawable')
	ptr @.tmr.985, ; 985 ('androidx/appcompat/widget/Toolbar')
	ptr @.tmr.986, ; 986 ('androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher')
	ptr @.tmr.987, ; 987 ('androidx/appcompat/widget/Toolbar$LayoutParams')
	ptr @.tmr.988, ; 988 ('androidx/appcompat/widget/Toolbar$OnMenuItemClickListener')
	ptr @.tmr.989, ; 989 ('mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor')
	ptr @.tmr.990, ; 990 ('androidx/appcompat/widget/AppCompatAutoCompleteTextView')
	ptr @.tmr.991, ; 991 ('androidx/appcompat/widget/AppCompatButton')
	ptr @.tmr.992, ; 992 ('androidx/appcompat/widget/AppCompatCheckBox')
	ptr @.tmr.993, ; 993 ('androidx/appcompat/widget/AppCompatEditText')
	ptr @.tmr.994, ; 994 ('androidx/appcompat/widget/AppCompatImageButton')
	ptr @.tmr.995, ; 995 ('androidx/appcompat/widget/AppCompatImageView')
	ptr @.tmr.996, ; 996 ('androidx/appcompat/widget/AppCompatRadioButton')
	ptr @.tmr.997, ; 997 ('androidx/appcompat/widget/AppCompatTextView')
	ptr @.tmr.998, ; 998 ('androidx/appcompat/widget/DecorToolbar')
	ptr @.tmr.999, ; 999 ('androidx/appcompat/widget/LinearLayoutCompat')
	ptr @.tmr.1000, ; 1000 ('androidx/appcompat/widget/LinearLayoutCompat$LayoutParams')
	ptr @.tmr.1001, ; 1001 ('androidx/appcompat/widget/ScrollingTabContainerView')
	ptr @.tmr.1002, ; 1002 ('androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener')
	ptr @.tmr.1003, ; 1003 ('androidx/appcompat/widget/SearchView')
	ptr @.tmr.1004, ; 1004 ('androidx/appcompat/widget/SearchView$OnCloseListener')
	ptr @.tmr.1005, ; 1005 ('mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor')
	ptr @.tmr.1006, ; 1006 ('androidx/appcompat/widget/SearchView$OnQueryTextListener')
	ptr @.tmr.1007, ; 1007 ('mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor')
	ptr @.tmr.1008, ; 1008 ('androidx/appcompat/widget/SearchView$OnSuggestionListener')
	ptr @.tmr.1009, ; 1009 ('mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor')
	ptr @.tmr.1010, ; 1010 ('androidx/appcompat/widget/SwitchCompat')
	ptr @.tmr.1011, ; 1011 ('androidx/appcompat/widget/TooltipCompat')
	ptr @.tmr.1012, ; 1012 ('androidx/appcompat/app/AlertDialog')
	ptr @.tmr.1013, ; 1013 ('androidx/appcompat/app/AlertDialog$Builder')
	ptr @.tmr.1014, ; 1014 ('androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor')
	ptr @.tmr.1015, ; 1015 ('androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor')
	ptr @.tmr.1016, ; 1016 ('androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor')
	ptr @.tmr.1017, ; 1017 ('androidx/appcompat/app/ActionBar')
	ptr @.tmr.1018, ; 1018 ('androidx/appcompat/app/ActionBar$LayoutParams')
	ptr @.tmr.1019, ; 1019 ('androidx/appcompat/app/ActionBar$OnMenuVisibilityListener')
	ptr @.tmr.1020, ; 1020 ('mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor')
	ptr @.tmr.1021, ; 1021 ('androidx/appcompat/app/ActionBar$OnNavigationListener')
	ptr @.tmr.1022, ; 1022 ('androidx/appcompat/app/ActionBar$Tab')
	ptr @.tmr.1023, ; 1023 ('androidx/appcompat/app/ActionBar$TabListener')
	ptr @.tmr.1024, ; 1024 ('androidx/appcompat/app/ActionBarDrawerToggle')
	ptr @.tmr.1025, ; 1025 ('androidx/appcompat/app/ActionBarDrawerToggle$Delegate')
	ptr @.tmr.1026, ; 1026 ('androidx/appcompat/app/AppCompatActivity')
	ptr @.tmr.1027, ; 1027 ('androidx/appcompat/app/AppCompatDelegate')
	ptr @.tmr.1028, ; 1028 ('androidx/appcompat/app/AppCompatDialog')
	ptr @.tmr.1029, ; 1029 ('androidx/appcompat/app/AppCompatCallback')
	ptr @.tmr.1030, ; 1030 ('androidx/appcompat/view/ActionMode')
	ptr @.tmr.1031, ; 1031 ('androidx/appcompat/view/ActionMode$Callback')
	ptr @.tmr.1032, ; 1032 ('androidx/appcompat/view/menu/MenuBuilder')
	ptr @.tmr.1033, ; 1033 ('androidx/appcompat/view/menu/MenuBuilder$Callback')
	ptr @.tmr.1034, ; 1034 ('androidx/appcompat/view/menu/MenuPresenter$Callback')
	ptr @.tmr.1035, ; 1035 ('androidx/appcompat/view/menu/MenuPresenter')
	ptr @.tmr.1036, ; 1036 ('androidx/appcompat/view/menu/MenuView')
	ptr @.tmr.1037, ; 1037 ('androidx/appcompat/view/menu/MenuItemImpl')
	ptr @.tmr.1038, ; 1038 ('androidx/appcompat/view/menu/SubMenuBuilder')
	ptr @.tmr.1039, ; 1039 ('androidx/viewpager/widget/PagerAdapter')
	ptr @.tmr.1040, ; 1040 ('androidx/viewpager/widget/ViewPager')
	ptr @.tmr.1041, ; 1041 ('androidx/viewpager/widget/ViewPager$OnAdapterChangeListener')
	ptr @.tmr.1042, ; 1042 ('mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor')
	ptr @.tmr.1043, ; 1043 ('androidx/viewpager/widget/ViewPager$OnPageChangeListener')
	ptr @.tmr.1044, ; 1044 ('mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor')
	ptr @.tmr.1045, ; 1045 ('androidx/viewpager/widget/ViewPager$PageTransformer')
	ptr @.tmr.1046, ; 1046 ('androidx/coordinatorlayout/widget/CoordinatorLayout')
	ptr @.tmr.1047, ; 1047 ('androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior')
	ptr @.tmr.1048, ; 1048 ('androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams')
	ptr @.tmr.1049, ; 1049 ('androidx/lifecycle/Lifecycle')
	ptr @.tmr.1050, ; 1050 ('androidx/lifecycle/Lifecycle$Event')
	ptr @.tmr.1051, ; 1051 ('androidx/lifecycle/Lifecycle$State')
	ptr @.tmr.1052, ; 1052 ('androidx/lifecycle/AtomicReference')
	ptr @.tmr.1053, ; 1053 ('androidx/lifecycle/LifecycleObserver')
	ptr @.tmr.1054, ; 1054 ('androidx/lifecycle/LifecycleOwner')
	ptr @.tmr.1055, ; 1055 ('crc64a5df8ade113ad624/MapCallbackHandler')
	ptr @.tmr.1056, ; 1056 ('kotlinx/coroutines/CoroutineScope')
	ptr @.tmr.1057, ; 1057 ('kotlinx/coroutines/flow/Flow')
	ptr @.tmr.1058, ; 1058 ('kotlinx/coroutines/flow/FlowCollector')
	ptr @.tmr.1059, ; 1059 ('kotlinx/coroutines/flow/MutableSharedFlow')
	ptr @.tmr.1060, ; 1060 ('kotlinx/coroutines/flow/MutableStateFlow')
	ptr @.tmr.1061, ; 1061 ('kotlinx/coroutines/flow/SharedFlow')
	ptr @.tmr.1062, ; 1062 ('kotlinx/coroutines/flow/StateFlow')
	ptr @.tmr.1063, ; 1063 ('kotlinx/serialization/DeserializationStrategy')
	ptr @.tmr.1064, ; 1064 ('kotlinx/serialization/KSerializer')
	ptr @.tmr.1065, ; 1065 ('kotlinx/serialization/SerializationStrategy')
	ptr @.tmr.1066, ; 1066 ('kotlinx/serialization/encoding/CompositeDecoder$Companion')
	ptr @.tmr.1067, ; 1067 ('kotlinx/serialization/encoding/CompositeDecoder')
	ptr @.tmr.1068, ; 1068 ('kotlinx/serialization/encoding/CompositeEncoder')
	ptr @.tmr.1069, ; 1069 ('kotlinx/serialization/encoding/Decoder')
	ptr @.tmr.1070, ; 1070 ('kotlinx/serialization/encoding/Encoder')
	ptr @.tmr.1071, ; 1071 ('kotlinx/serialization/descriptors/SerialDescriptor')
	ptr @.tmr.1072, ; 1072 ('kotlinx/serialization/descriptors/SerialKind')
	ptr @.tmr.1073, ; 1073 ('com/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate')
	ptr @.tmr.1074, ; 1074 ('com/google/android/gms/maps/CameraUpdate')
	ptr @.tmr.1075, ; 1075 ('com/google/android/gms/maps/CameraUpdateFactory')
	ptr @.tmr.1076, ; 1076 ('com/google/android/gms/maps/GoogleMap')
	ptr @.tmr.1077, ; 1077 ('com/google/android/gms/maps/GoogleMap$CancelableCallback')
	ptr @.tmr.1078, ; 1078 ('com/google/android/gms/maps/GoogleMap$InfoWindowAdapter')
	ptr @.tmr.1079, ; 1079 ('com/google/android/gms/maps/GoogleMap$OnCameraChangeListener')
	ptr @.tmr.1080, ; 1080 ('mono/com/google/android/gms/maps/GoogleMap_OnCameraChangeListenerImplementor')
	ptr @.tmr.1081, ; 1081 ('com/google/android/gms/maps/GoogleMap$OnCameraIdleListener')
	ptr @.tmr.1082, ; 1082 ('mono/com/google/android/gms/maps/GoogleMap_OnCameraIdleListenerImplementor')
	ptr @.tmr.1083, ; 1083 ('com/google/android/gms/maps/GoogleMap$OnCameraMoveCanceledListener')
	ptr @.tmr.1084, ; 1084 ('mono/com/google/android/gms/maps/GoogleMap_OnCameraMoveCanceledListenerImplementor')
	ptr @.tmr.1085, ; 1085 ('com/google/android/gms/maps/GoogleMap$OnCameraMoveListener')
	ptr @.tmr.1086, ; 1086 ('mono/com/google/android/gms/maps/GoogleMap_OnCameraMoveListenerImplementor')
	ptr @.tmr.1087, ; 1087 ('com/google/android/gms/maps/GoogleMap$OnCameraMoveStartedListener')
	ptr @.tmr.1088, ; 1088 ('mono/com/google/android/gms/maps/GoogleMap_OnCameraMoveStartedListenerImplementor')
	ptr @.tmr.1089, ; 1089 ('com/google/android/gms/maps/GoogleMap$OnCircleClickListener')
	ptr @.tmr.1090, ; 1090 ('mono/com/google/android/gms/maps/GoogleMap_OnCircleClickListenerImplementor')
	ptr @.tmr.1091, ; 1091 ('com/google/android/gms/maps/GoogleMap$OnGroundOverlayClickListener')
	ptr @.tmr.1092, ; 1092 ('mono/com/google/android/gms/maps/GoogleMap_OnGroundOverlayClickListenerImplementor')
	ptr @.tmr.1093, ; 1093 ('com/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener')
	ptr @.tmr.1094, ; 1094 ('mono/com/google/android/gms/maps/GoogleMap_OnIndoorStateChangeListenerImplementor')
	ptr @.tmr.1095, ; 1095 ('com/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener')
	ptr @.tmr.1096, ; 1096 ('mono/com/google/android/gms/maps/GoogleMap_OnInfoWindowClickListenerImplementor')
	ptr @.tmr.1097, ; 1097 ('com/google/android/gms/maps/GoogleMap$OnInfoWindowCloseListener')
	ptr @.tmr.1098, ; 1098 ('mono/com/google/android/gms/maps/GoogleMap_OnInfoWindowCloseListenerImplementor')
	ptr @.tmr.1099, ; 1099 ('com/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener')
	ptr @.tmr.1100, ; 1100 ('mono/com/google/android/gms/maps/GoogleMap_OnInfoWindowLongClickListenerImplementor')
	ptr @.tmr.1101, ; 1101 ('com/google/android/gms/maps/GoogleMap$OnMapCapabilitiesChangedListener')
	ptr @.tmr.1102, ; 1102 ('mono/com/google/android/gms/maps/GoogleMap_OnMapCapabilitiesChangedListenerImplementor')
	ptr @.tmr.1103, ; 1103 ('com/google/android/gms/maps/GoogleMap$OnMapClickListener')
	ptr @.tmr.1104, ; 1104 ('mono/com/google/android/gms/maps/GoogleMap_OnMapClickListenerImplementor')
	ptr @.tmr.1105, ; 1105 ('com/google/android/gms/maps/GoogleMap$OnMapLoadedCallback')
	ptr @.tmr.1106, ; 1106 ('com/google/android/gms/maps/GoogleMap$OnMapLongClickListener')
	ptr @.tmr.1107, ; 1107 ('mono/com/google/android/gms/maps/GoogleMap_OnMapLongClickListenerImplementor')
	ptr @.tmr.1108, ; 1108 ('com/google/android/gms/maps/GoogleMap$OnMarkerClickListener')
	ptr @.tmr.1109, ; 1109 ('mono/com/google/android/gms/maps/GoogleMap_OnMarkerClickListenerImplementor')
	ptr @.tmr.1110, ; 1110 ('com/google/android/gms/maps/GoogleMap$OnMarkerDragListener')
	ptr @.tmr.1111, ; 1111 ('mono/com/google/android/gms/maps/GoogleMap_OnMarkerDragListenerImplementor')
	ptr @.tmr.1112, ; 1112 ('com/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener')
	ptr @.tmr.1113, ; 1113 ('mono/com/google/android/gms/maps/GoogleMap_OnMyLocationButtonClickListenerImplementor')
	ptr @.tmr.1114, ; 1114 ('com/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener')
	ptr @.tmr.1115, ; 1115 ('mono/com/google/android/gms/maps/GoogleMap_OnMyLocationChangeListenerImplementor')
	ptr @.tmr.1116, ; 1116 ('com/google/android/gms/maps/GoogleMap$OnMyLocationClickListener')
	ptr @.tmr.1117, ; 1117 ('mono/com/google/android/gms/maps/GoogleMap_OnMyLocationClickListenerImplementor')
	ptr @.tmr.1118, ; 1118 ('com/google/android/gms/maps/GoogleMap$OnPoiClickListener')
	ptr @.tmr.1119, ; 1119 ('mono/com/google/android/gms/maps/GoogleMap_OnPoiClickListenerImplementor')
	ptr @.tmr.1120, ; 1120 ('com/google/android/gms/maps/GoogleMap$OnPolygonClickListener')
	ptr @.tmr.1121, ; 1121 ('mono/com/google/android/gms/maps/GoogleMap_OnPolygonClickListenerImplementor')
	ptr @.tmr.1122, ; 1122 ('com/google/android/gms/maps/GoogleMap$OnPolylineClickListener')
	ptr @.tmr.1123, ; 1123 ('mono/com/google/android/gms/maps/GoogleMap_OnPolylineClickListenerImplementor')
	ptr @.tmr.1124, ; 1124 ('com/google/android/gms/maps/GoogleMap$SnapshotReadyCallback')
	ptr @.tmr.1125, ; 1125 ('com/google/android/gms/maps/GoogleMapOptions')
	ptr @.tmr.1126, ; 1126 ('com/google/android/gms/maps/LocationSource$OnLocationChangedListener')
	ptr @.tmr.1127, ; 1127 ('com/google/android/gms/maps/LocationSource')
	ptr @.tmr.1128, ; 1128 ('com/google/android/gms/maps/OnMapReadyCallback')
	ptr @.tmr.1129, ; 1129 ('com/google/android/gms/maps/OnMapsSdkInitializedCallback')
	ptr @.tmr.1130, ; 1130 ('com/google/android/gms/maps/MapsInitializer')
	ptr @.tmr.1131, ; 1131 ('com/google/android/gms/maps/MapsInitializer$Renderer')
	ptr @.tmr.1132, ; 1132 ('com/google/android/gms/maps/MapView')
	ptr @.tmr.1133, ; 1133 ('com/google/android/gms/maps/Projection')
	ptr @.tmr.1134, ; 1134 ('com/google/android/gms/maps/UiSettings')
	ptr @.tmr.1135, ; 1135 ('com/google/android/gms/maps/model/Polygon')
	ptr @.tmr.1136, ; 1136 ('com/google/android/gms/maps/model/MarkerOptions')
	ptr @.tmr.1137, ; 1137 ('com/google/android/gms/maps/model/BitmapDescriptor')
	ptr @.tmr.1138, ; 1138 ('com/google/android/gms/maps/model/CameraPosition')
	ptr @.tmr.1139, ; 1139 ('com/google/android/gms/maps/model/CameraPosition$Builder')
	ptr @.tmr.1140, ; 1140 ('com/google/android/gms/maps/model/Cap')
	ptr @.tmr.1141, ; 1141 ('com/google/android/gms/maps/model/Circle')
	ptr @.tmr.1142, ; 1142 ('com/google/android/gms/maps/model/CircleOptions')
	ptr @.tmr.1143, ; 1143 ('com/google/android/gms/maps/model/Feature')
	ptr @.tmr.1144, ; 1144 ('com/google/android/gms/maps/model/FeatureClickEvent')
	ptr @.tmr.1145, ; 1145 ('com/google/android/gms/maps/model/FeatureLayer')
	ptr @.tmr.1146, ; 1146 ('com/google/android/gms/maps/model/FeatureLayer$OnFeatureClickListener')
	ptr @.tmr.1147, ; 1147 ('mono/com/google/android/gms/maps/model/FeatureLayer_OnFeatureClickListenerImplementor')
	ptr @.tmr.1148, ; 1148 ('com/google/android/gms/maps/model/FeatureLayer$StyleFactory')
	ptr @.tmr.1149, ; 1149 ('com/google/android/gms/maps/model/FeatureLayerOptions')
	ptr @.tmr.1150, ; 1150 ('com/google/android/gms/maps/model/FeatureLayerOptions$Builder')
	ptr @.tmr.1151, ; 1151 ('com/google/android/gms/maps/model/FeatureStyle')
	ptr @.tmr.1152, ; 1152 ('com/google/android/gms/maps/model/FeatureStyle$Builder')
	ptr @.tmr.1153, ; 1153 ('com/google/android/gms/maps/model/GroundOverlay')
	ptr @.tmr.1154, ; 1154 ('com/google/android/gms/maps/model/GroundOverlayOptions')
	ptr @.tmr.1155, ; 1155 ('com/google/android/gms/maps/model/IndoorBuilding')
	ptr @.tmr.1156, ; 1156 ('com/google/android/gms/maps/model/IndoorLevel')
	ptr @.tmr.1157, ; 1157 ('com/google/android/gms/maps/model/TileProvider')
	ptr @.tmr.1158, ; 1158 ('com/google/android/gms/maps/model/LatLng')
	ptr @.tmr.1159, ; 1159 ('com/google/android/gms/maps/model/LatLngBounds')
	ptr @.tmr.1160, ; 1160 ('com/google/android/gms/maps/model/LatLngBounds$Builder')
	ptr @.tmr.1161, ; 1161 ('com/google/android/gms/maps/model/MapCapabilities')
	ptr @.tmr.1162, ; 1162 ('com/google/android/gms/maps/model/MapStyleOptions')
	ptr @.tmr.1163, ; 1163 ('com/google/android/gms/maps/model/Marker')
	ptr @.tmr.1164, ; 1164 ('com/google/android/gms/maps/model/PatternItem')
	ptr @.tmr.1165, ; 1165 ('com/google/android/gms/maps/model/PointOfInterest')
	ptr @.tmr.1166, ; 1166 ('com/google/android/gms/maps/model/PolygonOptions')
	ptr @.tmr.1167, ; 1167 ('com/google/android/gms/maps/model/Polyline')
	ptr @.tmr.1168, ; 1168 ('com/google/android/gms/maps/model/PolylineOptions')
	ptr @.tmr.1169, ; 1169 ('com/google/android/gms/maps/model/StampStyle')
	ptr @.tmr.1170, ; 1170 ('com/google/android/gms/maps/model/StrokeStyle')
	ptr @.tmr.1171, ; 1171 ('com/google/android/gms/maps/model/StrokeStyle$Builder')
	ptr @.tmr.1172, ; 1172 ('com/google/android/gms/maps/model/StyleSpan')
	ptr @.tmr.1173, ; 1173 ('com/google/android/gms/maps/model/Tile')
	ptr @.tmr.1174, ; 1174 ('com/google/android/gms/maps/model/TileOverlay')
	ptr @.tmr.1175, ; 1175 ('com/google/android/gms/maps/model/TileOverlayOptions')
	ptr @.tmr.1176, ; 1176 ('com/google/android/gms/maps/model/VisibleRegion')
	ptr @.tmr.1177, ; 1177 ('crc642146c9879e6033f2/MainActivity')
	ptr @.tmr.1178, ; 1178 ('crc642146c9879e6033f2/MainApplication')
	ptr @.tmr.1179, ; 1179 ('androidx/lifecycle/SavedStateHandle')
	ptr @.tmr.1180, ; 1180 ('androidx/recyclerview/widget/GridLayoutManager')
	ptr @.tmr.1181, ; 1181 ('androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup')
	ptr @.tmr.1182, ; 1182 ('androidx/recyclerview/widget/ItemTouchUIUtil')
	ptr @.tmr.1183, ; 1183 ('androidx/recyclerview/widget/ItemTouchHelper')
	ptr @.tmr.1184, ; 1184 ('androidx/recyclerview/widget/ItemTouchHelper$Callback')
	ptr @.tmr.1185, ; 1185 ('androidx/recyclerview/widget/LinearLayoutManager')
	ptr @.tmr.1186, ; 1186 ('androidx/recyclerview/widget/LinearSmoothScroller')
	ptr @.tmr.1187, ; 1187 ('androidx/recyclerview/widget/LinearSnapHelper')
	ptr @.tmr.1188, ; 1188 ('androidx/recyclerview/widget/OrientationHelper')
	ptr @.tmr.1189, ; 1189 ('androidx/recyclerview/widget/PagerSnapHelper')
	ptr @.tmr.1190, ; 1190 ('androidx/recyclerview/widget/RecyclerView')
	ptr @.tmr.1191, ; 1191 ('androidx/recyclerview/widget/RecyclerView$Adapter')
	ptr @.tmr.1192, ; 1192 ('androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy')
	ptr @.tmr.1193, ; 1193 ('androidx/recyclerview/widget/RecyclerView$AdapterDataObserver')
	ptr @.tmr.1194, ; 1194 ('androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback')
	ptr @.tmr.1195, ; 1195 ('androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory')
	ptr @.tmr.1196, ; 1196 ('androidx/recyclerview/widget/RecyclerView$ItemAnimator')
	ptr @.tmr.1197, ; 1197 ('androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener')
	ptr @.tmr.1198, ; 1198 ('androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo')
	ptr @.tmr.1199, ; 1199 ('androidx/recyclerview/widget/RecyclerView$ItemDecoration')
	ptr @.tmr.1200, ; 1200 ('androidx/recyclerview/widget/RecyclerView$LayoutManager')
	ptr @.tmr.1201, ; 1201 ('androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry')
	ptr @.tmr.1202, ; 1202 ('androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties')
	ptr @.tmr.1203, ; 1203 ('androidx/recyclerview/widget/RecyclerView$LayoutParams')
	ptr @.tmr.1204, ; 1204 ('androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener')
	ptr @.tmr.1205, ; 1205 ('mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor')
	ptr @.tmr.1206, ; 1206 ('androidx/recyclerview/widget/RecyclerView$OnFlingListener')
	ptr @.tmr.1207, ; 1207 ('androidx/recyclerview/widget/RecyclerView$OnItemTouchListener')
	ptr @.tmr.1208, ; 1208 ('mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor')
	ptr @.tmr.1209, ; 1209 ('androidx/recyclerview/widget/RecyclerView$OnScrollListener')
	ptr @.tmr.1210, ; 1210 ('androidx/recyclerview/widget/RecyclerView$RecycledViewPool')
	ptr @.tmr.1211, ; 1211 ('androidx/recyclerview/widget/RecyclerView$Recycler')
	ptr @.tmr.1212, ; 1212 ('androidx/recyclerview/widget/RecyclerView$RecyclerListener')
	ptr @.tmr.1213, ; 1213 ('mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor')
	ptr @.tmr.1214, ; 1214 ('androidx/recyclerview/widget/RecyclerView$SmoothScroller')
	ptr @.tmr.1215, ; 1215 ('androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action')
	ptr @.tmr.1216, ; 1216 ('androidx/recyclerview/widget/RecyclerView$State')
	ptr @.tmr.1217, ; 1217 ('androidx/recyclerview/widget/RecyclerView$ViewCacheExtension')
	ptr @.tmr.1218, ; 1218 ('androidx/recyclerview/widget/RecyclerView$ViewHolder')
	ptr @.tmr.1219, ; 1219 ('androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate')
	ptr @.tmr.1220, ; 1220 ('androidx/recyclerview/widget/SnapHelper')
	ptr @.tmr.1221, ; 1221 ('androidx/fragment/app/FragmentActivity')
	ptr @.tmr.1222, ; 1222 ('androidx/fragment/app/DialogFragment')
	ptr @.tmr.1223, ; 1223 ('androidx/fragment/app/Fragment')
	ptr @.tmr.1224, ; 1224 ('androidx/fragment/app/Fragment$SavedState')
	ptr @.tmr.1225, ; 1225 ('androidx/fragment/app/FragmentContainer')
	ptr @.tmr.1226, ; 1226 ('androidx/fragment/app/FragmentContainerView')
	ptr @.tmr.1227, ; 1227 ('androidx/fragment/app/FragmentFactory')
	ptr @.tmr.1228, ; 1228 ('androidx/fragment/app/FragmentHostCallback')
	ptr @.tmr.1229, ; 1229 ('androidx/fragment/app/FragmentManager')
	ptr @.tmr.1230, ; 1230 ('androidx/fragment/app/FragmentManager$BackStackEntry')
	ptr @.tmr.1231, ; 1231 ('androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks')
	ptr @.tmr.1232, ; 1232 ('androidx/fragment/app/FragmentManager$OnBackStackChangedListener')
	ptr @.tmr.1233, ; 1233 ('mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor')
	ptr @.tmr.1234, ; 1234 ('androidx/fragment/app/FragmentTransaction')
	ptr @.tmr.1235, ; 1235 ('androidx/fragment/app/FragmentOnAttachListener')
	ptr @.tmr.1236, ; 1236 ('mono/androidx/fragment/app/FragmentOnAttachListenerImplementor')
	ptr @.tmr.1237, ; 1237 ('androidx/fragment/app/FragmentResultListener')
	ptr @.tmr.1238, ; 1238 ('androidx/fragment/app/strictmode/FragmentStrictMode')
	ptr @.tmr.1239, ; 1239 ('androidx/fragment/app/strictmode/FragmentStrictMode$Policy')
	ptr @.tmr.1240, ; 1240 ('androidx/fragment/app/strictmode/Violation')
	ptr @.tmr.1241, ; 1241 ('androidx/collection/SparseArrayCompat')
	ptr @.tmr.1242, ; 1242 ('com/google/android/gms/tasks/Task')
	ptr @.tmr.1243, ; 1243 ('com/google/android/gms/tasks/TaskCompletionSource')
	ptr @.tmr.1244, ; 1244 ('com/google/android/gms/tasks/CancellationToken')
	ptr @.tmr.1245, ; 1245 ('com/google/android/gms/tasks/Continuation')
	ptr @.tmr.1246, ; 1246 ('com/google/android/gms/tasks/OnCanceledListener')
	ptr @.tmr.1247, ; 1247 ('com/google/android/gms/tasks/OnCompleteListener')
	ptr @.tmr.1248, ; 1248 ('com/google/android/gms/tasks/OnFailureListener')
	ptr @.tmr.1249, ; 1249 ('com/google/android/gms/tasks/OnSuccessListener')
	ptr @.tmr.1250, ; 1250 ('com/google/android/gms/tasks/OnTokenCanceledListener')
	ptr @.tmr.1251, ; 1251 ('com/google/android/gms/tasks/SuccessContinuation')
	ptr @.tmr.1252, ; 1252 ('crc6495d4f5d63cc5c882/AwaitableTaskCompleteListener_1')
	ptr @.tmr.1253, ; 1253 ('androidx/savedstate/SavedStateRegistry')
	ptr @.tmr.1254, ; 1254 ('androidx/savedstate/SavedStateRegistry$SavedStateProvider')
	ptr @.tmr.1255, ; 1255 ('androidx/appcompat/content/res/AppCompatResources')
	ptr @.tmr.1256, ; 1256 ('androidx/appcompat/graphics/drawable/DrawableWrapperCompat')
	ptr @.tmr.1257, ; 1257 ('androidx/versionedparcelable/CustomVersionedParcelable')
	ptr @.tmr.1258, ; 1258 ('kotlin/Function')
	ptr @.tmr.1259, ; 1259 ('kotlin/sequences/Sequence')
	ptr @.tmr.1260, ; 1260 ('kotlin/reflect/KAnnotatedElement')
	ptr @.tmr.1261, ; 1261 ('kotlin/reflect/KCallable')
	ptr @.tmr.1262, ; 1262 ('kotlin/reflect/KClass')
	ptr @.tmr.1263, ; 1263 ('kotlin/reflect/KClassifier')
	ptr @.tmr.1264, ; 1264 ('kotlin/reflect/KDeclarationContainer')
	ptr @.tmr.1265, ; 1265 ('kotlin/reflect/KFunction')
	ptr @.tmr.1266, ; 1266 ('kotlin/reflect/KParameter$Kind')
	ptr @.tmr.1267, ; 1267 ('kotlin/reflect/KParameter')
	ptr @.tmr.1268, ; 1268 ('kotlin/reflect/KType')
	ptr @.tmr.1269, ; 1269 ('kotlin/reflect/KTypeParameter')
	ptr @.tmr.1270, ; 1270 ('kotlin/reflect/KTypeProjection')
	ptr @.tmr.1271, ; 1271 ('kotlin/reflect/KTypeProjection$Companion')
	ptr @.tmr.1272, ; 1272 ('kotlin/reflect/KVariance')
	ptr @.tmr.1273, ; 1273 ('kotlin/reflect/KVisibility')
	ptr @.tmr.1274, ; 1274 ('kotlin/jvm/internal/markers/KMappedMarker')
	ptr @.tmr.1275, ; 1275 ('kotlin/jvm/functions/Function0')
	ptr @.tmr.1276, ; 1276 ('kotlin/jvm/functions/Function1')
	ptr @.tmr.1277, ; 1277 ('kotlin/jvm/functions/Function2')
	ptr @.tmr.1278, ; 1278 ('kotlin/enums/EnumEntries')
	ptr @.tmr.1279, ; 1279 ('kotlin/coroutines/Continuation')
	ptr @.tmr.1280, ; 1280 ('kotlin/coroutines/CoroutineContext$Key')
	ptr @.tmr.1281, ; 1281 ('kotlin/coroutines/CoroutineContext')
	ptr @.tmr.1282, ; 1282 ('androidx/viewpager2/widget/ViewPager2')
	ptr @.tmr.1283, ; 1283 ('androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback')
	ptr @.tmr.1284, ; 1284 ('androidx/viewpager2/widget/ViewPager2$PageTransformer')
	ptr @.tmr.1285, ; 1285 ('androidx/viewpager2/adapter/FragmentStateAdapter')
	ptr @.tmr.1286, ; 1286 ('androidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback')
	ptr @.tmr.1287, ; 1287 ('androidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener')
	ptr @.tmr.1288, ; 1288 ('androidx/viewpager2/adapter/FragmentViewHolder')
	ptr @.tmr.1289, ; 1289 ('androidx/drawerlayout/widget/DrawerLayout')
	ptr @.tmr.1290, ; 1290 ('androidx/drawerlayout/widget/DrawerLayout$DrawerListener')
	ptr @.tmr.1291, ; 1291 ('mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor')
	ptr @.tmr.1292, ; 1292 ('androidx/drawerlayout/widget/DrawerLayout$LayoutParams')
	ptr @.tmr.1293, ; 1293 ('androidx/core/util/Consumer')
	ptr @.tmr.1294, ; 1294 ('androidx/core/util/Predicate')
	ptr @.tmr.1295, ; 1295 ('androidx/core/util/Pair')
	ptr @.tmr.1296, ; 1296 ('androidx/core/os/LocaleListCompat')
	ptr @.tmr.1297, ; 1297 ('androidx/core/internal/view/SupportMenuItem')
	ptr @.tmr.1298, ; 1298 ('androidx/core/graphics/ColorUtils')
	ptr @.tmr.1299, ; 1299 ('androidx/core/graphics/Insets')
	ptr @.tmr.1300, ; 1300 ('androidx/core/graphics/drawable/DrawableCompat')
	ptr @.tmr.1301, ; 1301 ('androidx/core/graphics/drawable/IconCompat')
	ptr @.tmr.1302, ; 1302 ('androidx/core/content/ContextCompat')
	ptr @.tmr.1303, ; 1303 ('androidx/core/content/FileProvider')
	ptr @.tmr.1304, ; 1304 ('androidx/core/content/LocusIdCompat')
	ptr @.tmr.1305, ; 1305 ('androidx/core/content/PermissionChecker')
	ptr @.tmr.1306, ; 1306 ('androidx/core/content/pm/PackageInfoCompat')
	ptr @.tmr.1307, ; 1307 ('androidx/core/content/pm/ShortcutInfoCompat')
	ptr @.tmr.1308, ; 1308 ('androidx/core/app/ActivityCompat')
	ptr @.tmr.1309, ; 1309 ('androidx/core/app/ActivityCompat$PermissionCompatDelegate')
	ptr @.tmr.1310, ; 1310 ('androidx/core/app/ActivityOptionsCompat')
	ptr @.tmr.1311, ; 1311 ('androidx/core/app/ComponentActivity')
	ptr @.tmr.1312, ; 1312 ('androidx/core/app/ComponentActivity$ExtraData')
	ptr @.tmr.1313, ; 1313 ('androidx/core/app/NotificationBuilderWithBuilderAccessor')
	ptr @.tmr.1314, ; 1314 ('androidx/core/app/NotificationCompat')
	ptr @.tmr.1315, ; 1315 ('androidx/core/app/NotificationCompat$Action')
	ptr @.tmr.1316, ; 1316 ('androidx/core/app/NotificationCompat$BigPictureStyle')
	ptr @.tmr.1317, ; 1317 ('androidx/core/app/NotificationCompat$BigTextStyle')
	ptr @.tmr.1318, ; 1318 ('androidx/core/app/NotificationCompat$BubbleMetadata')
	ptr @.tmr.1319, ; 1319 ('androidx/core/app/NotificationCompat$Builder')
	ptr @.tmr.1320, ; 1320 ('androidx/core/app/NotificationCompat$Extender')
	ptr @.tmr.1321, ; 1321 ('androidx/core/app/NotificationCompat$Style')
	ptr @.tmr.1322, ; 1322 ('androidx/core/app/Person')
	ptr @.tmr.1323, ; 1323 ('androidx/core/app/Person$Builder')
	ptr @.tmr.1324, ; 1324 ('androidx/core/app/RemoteInput')
	ptr @.tmr.1325, ; 1325 ('androidx/core/app/SharedElementCallback')
	ptr @.tmr.1326, ; 1326 ('androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener')
	ptr @.tmr.1327, ; 1327 ('androidx/core/app/TaskStackBuilder')
	ptr @.tmr.1328, ; 1328 ('androidx/core/widget/NestedScrollView')
	ptr @.tmr.1329, ; 1329 ('androidx/core/widget/NestedScrollView$OnScrollChangeListener')
	ptr @.tmr.1330, ; 1330 ('mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor')
	ptr @.tmr.1331, ; 1331 ('androidx/core/widget/CompoundButtonCompat')
	ptr @.tmr.1332, ; 1332 ('androidx/core/widget/TextViewCompat')
	ptr @.tmr.1333, ; 1333 ('androidx/core/view/AccessibilityDelegateCompat')
	ptr @.tmr.1334, ; 1334 ('androidx/core/view/ActionProvider')
	ptr @.tmr.1335, ; 1335 ('androidx/core/view/ActionProvider$SubUiVisibilityListener')
	ptr @.tmr.1336, ; 1336 ('mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor')
	ptr @.tmr.1337, ; 1337 ('androidx/core/view/ActionProvider$VisibilityListener')
	ptr @.tmr.1338, ; 1338 ('mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor')
	ptr @.tmr.1339, ; 1339 ('androidx/core/view/ContentInfoCompat')
	ptr @.tmr.1340, ; 1340 ('androidx/core/view/DisplayCutoutCompat')
	ptr @.tmr.1341, ; 1341 ('androidx/core/view/DragAndDropPermissionsCompat')
	ptr @.tmr.1342, ; 1342 ('androidx/core/view/MenuProvider')
	ptr @.tmr.1343, ; 1343 ('androidx/core/view/OnApplyWindowInsetsListener')
	ptr @.tmr.1344, ; 1344 ('androidx/core/view/OnReceiveContentListener')
	ptr @.tmr.1345, ; 1345 ('androidx/core/view/ScrollingView')
	ptr @.tmr.1346, ; 1346 ('androidx/core/view/ViewPropertyAnimatorListener')
	ptr @.tmr.1347, ; 1347 ('androidx/core/view/ViewPropertyAnimatorUpdateListener')
	ptr @.tmr.1348, ; 1348 ('androidx/core/view/WindowInsetsAnimationControlListenerCompat')
	ptr @.tmr.1349, ; 1349 ('androidx/core/view/MenuItemCompat')
	ptr @.tmr.1350, ; 1350 ('androidx/core/view/MenuItemCompat$OnActionExpandListener')
	ptr @.tmr.1351, ; 1351 ('androidx/core/view/PointerIconCompat')
	ptr @.tmr.1352, ; 1352 ('androidx/core/view/ScaleGestureDetectorCompat')
	ptr @.tmr.1353, ; 1353 ('androidx/core/view/ViewCompat')
	ptr @.tmr.1354, ; 1354 ('androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat')
	ptr @.tmr.1355, ; 1355 ('androidx/core/view/ViewGroupCompat')
	ptr @.tmr.1356, ; 1356 ('androidx/core/view/ViewPropertyAnimatorCompat')
	ptr @.tmr.1357, ; 1357 ('androidx/core/view/ViewStructureCompat')
	ptr @.tmr.1358, ; 1358 ('androidx/core/view/WindowCompat')
	ptr @.tmr.1359, ; 1359 ('androidx/core/view/WindowInsetsAnimationCompat')
	ptr @.tmr.1360, ; 1360 ('androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat')
	ptr @.tmr.1361, ; 1361 ('androidx/core/view/WindowInsetsAnimationCompat$Callback')
	ptr @.tmr.1362, ; 1362 ('androidx/core/view/WindowInsetsAnimationControllerCompat')
	ptr @.tmr.1363, ; 1363 ('androidx/core/view/WindowInsetsCompat')
	ptr @.tmr.1364, ; 1364 ('androidx/core/view/WindowInsetsCompat$Builder')
	ptr @.tmr.1365, ; 1365 ('androidx/core/view/WindowInsetsCompat$Type')
	ptr @.tmr.1366, ; 1366 ('androidx/core/view/WindowInsetsControllerCompat')
	ptr @.tmr.1367, ; 1367 ('androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener')
	ptr @.tmr.1368, ; 1368 ('mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor')
	ptr @.tmr.1369, ; 1369 ('androidx/core/view/contentcapture/ContentCaptureSessionCompat')
	ptr @.tmr.1370, ; 1370 ('androidx/core/view/autofill/AutofillIdCompat')
	ptr @.tmr.1371, ; 1371 ('androidx/core/view/accessibility/AccessibilityNodeInfoCompat')
	ptr @.tmr.1372, ; 1372 ('androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat')
	ptr @.tmr.1373, ; 1373 ('androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat')
	ptr @.tmr.1374, ; 1374 ('androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat')
	ptr @.tmr.1375, ; 1375 ('androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat')
	ptr @.tmr.1376, ; 1376 ('androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat')
	ptr @.tmr.1377, ; 1377 ('androidx/core/view/accessibility/AccessibilityNodeProviderCompat')
	ptr @.tmr.1378, ; 1378 ('androidx/core/view/accessibility/AccessibilityWindowInfoCompat')
	ptr @.tmr.1379, ; 1379 ('androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments')
	ptr @.tmr.1380, ; 1380 ('androidx/core/view/accessibility/AccessibilityViewCommand')
	ptr @.tmr.1381, ; 1381 ('androidx/core/text/PrecomputedTextCompat')
	ptr @.tmr.1382, ; 1382 ('androidx/core/text/PrecomputedTextCompat$Params')
	ptr @.tmr.1383, ; 1383 ('plugin/LocalNotification/GeofenceTransitionsIntentReceiver')
	ptr @.tmr.1384, ; 1384 ('plugin/LocalNotification/NotificationActionReceiver')
	ptr @.tmr.1385 ; 1385 ('plugin/LocalNotification/ScheduledAlarmReceiver')
], align 16

; Strings
@.tmr.0 = private unnamed_addr constant [66 x i8] c"xamarin/android/net/ServerCertificateCustomValidator_TrustManager\00", align 16
@.tmr.1 = private unnamed_addr constant [81 x i8] c"xamarin/android/net/ServerCertificateCustomValidator_TrustManager_FakeSSLSession\00", align 16
@.tmr.2 = private unnamed_addr constant [85 x i8] c"xamarin/android/net/ServerCertificateCustomValidator_AlwaysAcceptingHostnameVerifier\00", align 16
@.tmr.3 = private unnamed_addr constant [29 x i8] c"org/xmlpull/v1/XmlPullParser\00", align 16
@.tmr.4 = private unnamed_addr constant [38 x i8] c"org/xmlpull/v1/XmlPullParserException\00", align 16
@.tmr.5 = private unnamed_addr constant [32 x i8] c"javax/security/cert/Certificate\00", align 16
@.tmr.6 = private unnamed_addr constant [36 x i8] c"javax/security/cert/X509Certificate\00", align 16
@.tmr.7 = private unnamed_addr constant [28 x i8] c"javax/security/auth/Subject\00", align 16
@.tmr.8 = private unnamed_addr constant [24 x i8] c"javax/net/SocketFactory\00", align 16
@.tmr.9 = private unnamed_addr constant [33 x i8] c"javax/net/ssl/HttpsURLConnection\00", align 16
@.tmr.10 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/HostnameVerifier\00", align 16
@.tmr.11 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/KeyManager\00", align 16
@.tmr.12 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLSession\00", align 16
@.tmr.13 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/SSLSessionContext\00", align 16
@.tmr.14 = private unnamed_addr constant [27 x i8] c"javax/net/ssl/TrustManager\00", align 16
@.tmr.15 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/X509TrustManager\00", align 16
@.tmr.16 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/KeyManagerFactory\00", align 16
@.tmr.17 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLContext\00", align 16
@.tmr.18 = private unnamed_addr constant [24 x i8] c"javax/net/ssl/SSLEngine\00", align 16
@.tmr.19 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/SSLSocketFactory\00", align 16
@.tmr.20 = private unnamed_addr constant [34 x i8] c"javax/net/ssl/TrustManagerFactory\00", align 16
@.tmr.21 = private unnamed_addr constant [39 x i8] c"javax/net/ssl/X509ExtendedTrustManager\00", align 16
@.tmr.22 = private unnamed_addr constant [25 x i8] c"android/window/BackEvent\00", align 16
@.tmr.23 = private unnamed_addr constant [34 x i8] c"android/window/InputTransferToken\00", align 16
@.tmr.24 = private unnamed_addr constant [37 x i8] c"android/window/OnBackInvokedCallback\00", align 16
@.tmr.25 = private unnamed_addr constant [39 x i8] c"android/window/OnBackInvokedDispatcher\00", align 16
@.tmr.26 = private unnamed_addr constant [45 x i8] c"android/window/TrustedPresentationThresholds\00", align 16
@.tmr.27 = private unnamed_addr constant [29 x i8] c"android/webkit/CookieManager\00", align 16
@.tmr.28 = private unnamed_addr constant [29 x i8] c"android/webkit/ValueCallback\00", align 16
@.tmr.29 = private unnamed_addr constant [34 x i8] c"android/webkit/WebResourceRequest\00", align 16
@.tmr.30 = private unnamed_addr constant [27 x i8] c"android/webkit/MimeTypeMap\00", align 16
@.tmr.31 = private unnamed_addr constant [39 x i8] c"android/webkit/RenderProcessGoneDetail\00", align 16
@.tmr.32 = private unnamed_addr constant [31 x i8] c"android/webkit/WebChromeClient\00", align 16
@.tmr.33 = private unnamed_addr constant [50 x i8] c"android/webkit/WebChromeClient$CustomViewCallback\00", align 16
@.tmr.34 = private unnamed_addr constant [49 x i8] c"android/webkit/WebChromeClient$FileChooserParams\00", align 16
@.tmr.35 = private unnamed_addr constant [26 x i8] c"android/webkit/WebMessage\00", align 16
@.tmr.36 = private unnamed_addr constant [32 x i8] c"android/webkit/WebResourceError\00", align 16
@.tmr.37 = private unnamed_addr constant [35 x i8] c"android/webkit/WebResourceResponse\00", align 16
@.tmr.38 = private unnamed_addr constant [27 x i8] c"android/webkit/WebSettings\00", align 16
@.tmr.39 = private unnamed_addr constant [23 x i8] c"android/webkit/WebView\00", align 16
@.tmr.40 = private unnamed_addr constant [29 x i8] c"android/webkit/WebViewClient\00", align 16
@.tmr.41 = private unnamed_addr constant [35 x i8] c"android/provider/DocumentsContract\00", align 16
@.tmr.42 = private unnamed_addr constant [28 x i8] c"android/provider/MediaStore\00", align 16
@.tmr.43 = private unnamed_addr constant [34 x i8] c"android/provider/MediaStore$Audio\00", align 16
@.tmr.44 = private unnamed_addr constant [40 x i8] c"android/provider/MediaStore$Audio$Media\00", align 16
@.tmr.45 = private unnamed_addr constant [35 x i8] c"android/provider/MediaStore$Images\00", align 16
@.tmr.46 = private unnamed_addr constant [41 x i8] c"android/provider/MediaStore$Images$Media\00", align 16
@.tmr.47 = private unnamed_addr constant [34 x i8] c"android/provider/MediaStore$Video\00", align 16
@.tmr.48 = private unnamed_addr constant [40 x i8] c"android/provider/MediaStore$Video$Media\00", align 16
@.tmr.49 = private unnamed_addr constant [33 x i8] c"android/database/CharArrayBuffer\00", align 16
@.tmr.50 = private unnamed_addr constant [33 x i8] c"android/database/ContentObserver\00", align 16
@.tmr.51 = private unnamed_addr constant [33 x i8] c"android/database/DataSetObserver\00", align 16
@.tmr.52 = private unnamed_addr constant [24 x i8] c"android/database/Cursor\00", align 16
@.tmr.53 = private unnamed_addr constant [27 x i8] c"android/widget/AbsListView\00", align 16
@.tmr.54 = private unnamed_addr constant [44 x i8] c"android/widget/AbsListView$OnScrollListener\00", align 16
@.tmr.55 = private unnamed_addr constant [27 x i8] c"android/widget/AdapterView\00", align 16
@.tmr.56 = private unnamed_addr constant [47 x i8] c"android/widget/AdapterView$OnItemClickListener\00", align 16
@.tmr.57 = private unnamed_addr constant [63 x i8] c"mono/android/widget/AdapterView_OnItemClickListenerImplementor\00", align 16
@.tmr.58 = private unnamed_addr constant [51 x i8] c"android/widget/AdapterView$OnItemLongClickListener\00", align 16
@.tmr.59 = private unnamed_addr constant [50 x i8] c"android/widget/AdapterView$OnItemSelectedListener\00", align 16
@.tmr.60 = private unnamed_addr constant [36 x i8] c"android/widget/AutoCompleteTextView\00", align 16
@.tmr.61 = private unnamed_addr constant [27 x i8] c"android/widget/BaseAdapter\00", align 16
@.tmr.62 = private unnamed_addr constant [26 x i8] c"android/widget/DatePicker\00", align 16
@.tmr.63 = private unnamed_addr constant [24 x i8] c"android/widget/TextView\00", align 16
@.tmr.64 = private unnamed_addr constant [35 x i8] c"android/widget/TextView$BufferType\00", align 16
@.tmr.65 = private unnamed_addr constant [47 x i8] c"android/widget/TextView$OnEditorActionListener\00", align 16
@.tmr.66 = private unnamed_addr constant [63 x i8] c"mono/android/widget/TextView_OnEditorActionListenerImplementor\00", align 16
@.tmr.67 = private unnamed_addr constant [30 x i8] c"android/widget/AbsoluteLayout\00", align 16
@.tmr.68 = private unnamed_addr constant [26 x i8] c"android/widget/AbsSeekBar\00", align 16
@.tmr.69 = private unnamed_addr constant [22 x i8] c"android/widget/Button\00", align 16
@.tmr.70 = private unnamed_addr constant [24 x i8] c"android/widget/CheckBox\00", align 16
@.tmr.71 = private unnamed_addr constant [30 x i8] c"android/widget/CompoundButton\00", align 16
@.tmr.72 = private unnamed_addr constant [54 x i8] c"android/widget/CompoundButton$OnCheckedChangeListener\00", align 16
@.tmr.73 = private unnamed_addr constant [70 x i8] c"mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor\00", align 16
@.tmr.74 = private unnamed_addr constant [26 x i8] c"android/widget/EdgeEffect\00", align 16
@.tmr.75 = private unnamed_addr constant [24 x i8] c"android/widget/EditText\00", align 16
@.tmr.76 = private unnamed_addr constant [22 x i8] c"android/widget/Filter\00", align 16
@.tmr.77 = private unnamed_addr constant [36 x i8] c"android/widget/Filter$FilterResults\00", align 16
@.tmr.78 = private unnamed_addr constant [27 x i8] c"android/widget/FrameLayout\00", align 16
@.tmr.79 = private unnamed_addr constant [40 x i8] c"android/widget/FrameLayout$LayoutParams\00", align 16
@.tmr.80 = private unnamed_addr constant [36 x i8] c"android/widget/HorizontalScrollView\00", align 16
@.tmr.81 = private unnamed_addr constant [23 x i8] c"android/widget/Adapter\00", align 16
@.tmr.82 = private unnamed_addr constant [26 x i8] c"android/widget/Filterable\00", align 16
@.tmr.83 = private unnamed_addr constant [35 x i8] c"android/widget/FilterQueryProvider\00", align 16
@.tmr.84 = private unnamed_addr constant [27 x i8] c"android/widget/ListAdapter\00", align 16
@.tmr.85 = private unnamed_addr constant [27 x i8] c"android/widget/ImageButton\00", align 16
@.tmr.86 = private unnamed_addr constant [25 x i8] c"android/widget/ImageView\00", align 16
@.tmr.87 = private unnamed_addr constant [35 x i8] c"android/widget/ImageView$ScaleType\00", align 16
@.tmr.88 = private unnamed_addr constant [30 x i8] c"android/widget/SectionIndexer\00", align 16
@.tmr.89 = private unnamed_addr constant [30 x i8] c"android/widget/SpinnerAdapter\00", align 16
@.tmr.90 = private unnamed_addr constant [28 x i8] c"android/widget/LinearLayout\00", align 16
@.tmr.91 = private unnamed_addr constant [41 x i8] c"android/widget/LinearLayout$LayoutParams\00", align 16
@.tmr.92 = private unnamed_addr constant [24 x i8] c"android/widget/ListView\00", align 16
@.tmr.93 = private unnamed_addr constant [27 x i8] c"android/widget/ProgressBar\00", align 16
@.tmr.94 = private unnamed_addr constant [27 x i8] c"android/widget/RadioButton\00", align 16
@.tmr.95 = private unnamed_addr constant [27 x i8] c"android/widget/RemoteViews\00", align 16
@.tmr.96 = private unnamed_addr constant [26 x i8] c"android/widget/SearchView\00", align 16
@.tmr.97 = private unnamed_addr constant [23 x i8] c"android/widget/SeekBar\00", align 16
@.tmr.98 = private unnamed_addr constant [47 x i8] c"android/widget/SeekBar$OnSeekBarChangeListener\00", align 16
@.tmr.99 = private unnamed_addr constant [22 x i8] c"android/widget/Switch\00", align 16
@.tmr.100 = private unnamed_addr constant [26 x i8] c"android/widget/TimePicker\00", align 16
@.tmr.101 = private unnamed_addr constant [17 x i8] c"android/util/Log\00", align 16
@.tmr.102 = private unnamed_addr constant [28 x i8] c"android/util/DisplayMetrics\00", align 16
@.tmr.103 = private unnamed_addr constant [26 x i8] c"android/util/AttributeSet\00", align 16
@.tmr.104 = private unnamed_addr constant [18 x i8] c"android/util/Pair\00", align 16
@.tmr.105 = private unnamed_addr constant [19 x i8] c"android/util/SizeF\00", align 16
@.tmr.106 = private unnamed_addr constant [25 x i8] c"android/util/SparseArray\00", align 16
@.tmr.107 = private unnamed_addr constant [22 x i8] c"android/util/StateSet\00", align 16
@.tmr.108 = private unnamed_addr constant [24 x i8] c"android/util/TypedValue\00", align 16
@.tmr.109 = private unnamed_addr constant [41 x i8] c"mono/android/text/TextWatcherImplementor\00", align 16
@.tmr.110 = private unnamed_addr constant [18 x i8] c"android/text/Html\00", align 16
@.tmr.111 = private unnamed_addr constant [22 x i8] c"android/text/Editable\00", align 16
@.tmr.112 = private unnamed_addr constant [22 x i8] c"android/text/GetChars\00", align 16
@.tmr.113 = private unnamed_addr constant [38 x i8] c"android/text/InputFilter$LengthFilter\00", align 16
@.tmr.114 = private unnamed_addr constant [25 x i8] c"android/text/InputFilter\00", align 16
@.tmr.115 = private unnamed_addr constant [24 x i8] c"android/text/NoCopySpan\00", align 16
@.tmr.116 = private unnamed_addr constant [23 x i8] c"android/text/Spannable\00", align 16
@.tmr.117 = private unnamed_addr constant [21 x i8] c"android/text/Spanned\00", align 16
@.tmr.118 = private unnamed_addr constant [36 x i8] c"android/text/TextDirectionHeuristic\00", align 16
@.tmr.119 = private unnamed_addr constant [25 x i8] c"android/text/TextWatcher\00", align 16
@.tmr.120 = private unnamed_addr constant [20 x i8] c"android/text/Layout\00", align 16
@.tmr.121 = private unnamed_addr constant [30 x i8] c"android/text/Layout$Alignment\00", align 16
@.tmr.122 = private unnamed_addr constant [29 x i8] c"android/text/SpannableString\00", align 16
@.tmr.123 = private unnamed_addr constant [36 x i8] c"android/text/SpannableStringBuilder\00", align 16
@.tmr.124 = private unnamed_addr constant [37 x i8] c"android/text/SpannableStringInternal\00", align 16
@.tmr.125 = private unnamed_addr constant [26 x i8] c"android/text/StaticLayout\00", align 16
@.tmr.126 = private unnamed_addr constant [34 x i8] c"android/text/StaticLayout$Builder\00", align 16
@.tmr.127 = private unnamed_addr constant [23 x i8] c"android/text/TextPaint\00", align 16
@.tmr.128 = private unnamed_addr constant [23 x i8] c"android/text/TextUtils\00", align 16
@.tmr.129 = private unnamed_addr constant [34 x i8] c"android/text/TextUtils$TruncateAt\00", align 16
@.tmr.130 = private unnamed_addr constant [39 x i8] c"android/text/style/BackgroundColorSpan\00", align 16
@.tmr.131 = private unnamed_addr constant [30 x i8] c"android/text/style/BulletSpan\00", align 16
@.tmr.132 = private unnamed_addr constant [34 x i8] c"android/text/style/CharacterStyle\00", align 16
@.tmr.133 = private unnamed_addr constant [33 x i8] c"android/text/style/ClickableSpan\00", align 16
@.tmr.134 = private unnamed_addr constant [39 x i8] c"android/text/style/ForegroundColorSpan\00", align 16
@.tmr.135 = private unnamed_addr constant [34 x i8] c"android/text/style/LineHeightSpan\00", align 16
@.tmr.136 = private unnamed_addr constant [34 x i8] c"android/text/style/ParagraphStyle\00", align 16
@.tmr.137 = private unnamed_addr constant [36 x i8] c"android/text/style/WrapTogetherSpan\00", align 16
@.tmr.138 = private unnamed_addr constant [39 x i8] c"android/text/style/MetricAffectingSpan\00", align 16
@.tmr.139 = private unnamed_addr constant [37 x i8] c"android/text/style/StrikethroughSpan\00", align 16
@.tmr.140 = private unnamed_addr constant [29 x i8] c"android/text/style/StyleSpan\00", align 16
@.tmr.141 = private unnamed_addr constant [33 x i8] c"android/text/style/SubscriptSpan\00", align 16
@.tmr.142 = private unnamed_addr constant [35 x i8] c"android/text/style/SuperscriptSpan\00", align 16
@.tmr.143 = private unnamed_addr constant [32 x i8] c"android/text/style/TypefaceSpan\00", align 16
@.tmr.144 = private unnamed_addr constant [33 x i8] c"android/text/style/UnderlineSpan\00", align 16
@.tmr.145 = private unnamed_addr constant [36 x i8] c"android/text/method/BaseKeyListener\00", align 16
@.tmr.146 = private unnamed_addr constant [38 x i8] c"android/text/method/DigitsKeyListener\00", align 16
@.tmr.147 = private unnamed_addr constant [32 x i8] c"android/text/method/KeyListener\00", align 16
@.tmr.148 = private unnamed_addr constant [35 x i8] c"android/text/method/MovementMethod\00", align 16
@.tmr.149 = private unnamed_addr constant [39 x i8] c"android/text/method/MetaKeyKeyListener\00", align 16
@.tmr.150 = private unnamed_addr constant [38 x i8] c"android/text/method/NumberKeyListener\00", align 16
@.tmr.151 = private unnamed_addr constant [31 x i8] c"android/text/format/DateFormat\00", align 16
@.tmr.152 = private unnamed_addr constant [37 x i8] c"android/preference/PreferenceManager\00", align 16
@.tmr.153 = private unnamed_addr constant [22 x i8] c"android/opengl/Matrix\00", align 16
@.tmr.154 = private unnamed_addr constant [19 x i8] c"android/os/Handler\00", align 16
@.tmr.155 = private unnamed_addr constant [19 x i8] c"android/os/Message\00", align 16
@.tmr.156 = private unnamed_addr constant [24 x i8] c"android/os/PowerManager\00", align 16
@.tmr.157 = private unnamed_addr constant [20 x i8] c"android/os/Vibrator\00", align 16
@.tmr.158 = private unnamed_addr constant [22 x i8] c"android/os/BaseBundle\00", align 16
@.tmr.159 = private unnamed_addr constant [17 x i8] c"android/os/Build\00", align 16
@.tmr.160 = private unnamed_addr constant [25 x i8] c"android/os/Build$VERSION\00", align 16
@.tmr.161 = private unnamed_addr constant [18 x i8] c"android/os/Bundle\00", align 16
@.tmr.162 = private unnamed_addr constant [30 x i8] c"android/os/CancellationSignal\00", align 16
@.tmr.163 = private unnamed_addr constant [23 x i8] c"android/os/Environment\00", align 16
@.tmr.164 = private unnamed_addr constant [34 x i8] c"android/os/IBinder$DeathRecipient\00", align 16
@.tmr.165 = private unnamed_addr constant [19 x i8] c"android/os/IBinder\00", align 16
@.tmr.166 = private unnamed_addr constant [45 x i8] c"android/os/IBinder$FrozenStateChangeCallback\00", align 16
@.tmr.167 = private unnamed_addr constant [22 x i8] c"android/os/IInterface\00", align 16
@.tmr.168 = private unnamed_addr constant [30 x i8] c"android/os/Parcelable$Creator\00", align 16
@.tmr.169 = private unnamed_addr constant [22 x i8] c"android/os/Parcelable\00", align 16
@.tmr.170 = private unnamed_addr constant [22 x i8] c"android/os/LocaleList\00", align 16
@.tmr.171 = private unnamed_addr constant [18 x i8] c"android/os/Looper\00", align 16
@.tmr.172 = private unnamed_addr constant [18 x i8] c"android/os/Parcel\00", align 16
@.tmr.173 = private unnamed_addr constant [29 x i8] c"android/os/PersistableBundle\00", align 16
@.tmr.174 = private unnamed_addr constant [23 x i8] c"android/os/SystemClock\00", align 16
@.tmr.175 = private unnamed_addr constant [22 x i8] c"android/os/UserHandle\00", align 16
@.tmr.176 = private unnamed_addr constant [27 x i8] c"android/os/VibrationEffect\00", align 16
@.tmr.177 = private unnamed_addr constant [27 x i8] c"android/os/VibratorManager\00", align 16
@.tmr.178 = private unnamed_addr constant [30 x i8] c"android/media/AudioAttributes\00", align 16
@.tmr.179 = private unnamed_addr constant [38 x i8] c"android/media/AudioAttributes$Builder\00", align 16
@.tmr.180 = private unnamed_addr constant [28 x i8] c"android/media/ExifInterface\00", align 16
@.tmr.181 = private unnamed_addr constant [30 x i8] c"android/media/RingtoneManager\00", align 16
@.tmr.182 = private unnamed_addr constant [25 x i8] c"android/location/Address\00", align 16
@.tmr.183 = private unnamed_addr constant [26 x i8] c"android/location/Geocoder\00", align 16
@.tmr.184 = private unnamed_addr constant [26 x i8] c"android/location/Location\00", align 16
@.tmr.185 = private unnamed_addr constant [27 x i8] c"android/animation/Animator\00", align 16
@.tmr.186 = private unnamed_addr constant [44 x i8] c"android/animation/Animator$AnimatorListener\00", align 16
@.tmr.187 = private unnamed_addr constant [47 x i8] c"mono/android/animation/AnimatorEventDispatcher\00", align 16
@.tmr.188 = private unnamed_addr constant [32 x i8] c"android/animation/ValueAnimator\00", align 16
@.tmr.189 = private unnamed_addr constant [55 x i8] c"android/animation/ValueAnimator$AnimatorUpdateListener\00", align 16
@.tmr.190 = private unnamed_addr constant [71 x i8] c"mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor\00", align 16
@.tmr.191 = private unnamed_addr constant [60 x i8] c"android/animation/ValueAnimator$DurationScaleChangeListener\00", align 16
@.tmr.192 = private unnamed_addr constant [42 x i8] c"android/animation/AnimatorListenerAdapter\00", align 16
@.tmr.193 = private unnamed_addr constant [35 x i8] c"android/animation/TimeInterpolator\00", align 16
@.tmr.194 = private unnamed_addr constant [40 x i8] c"android/view/WindowManager$LayoutParams\00", align 16
@.tmr.195 = private unnamed_addr constant [18 x i8] c"android/view/View\00", align 16
@.tmr.196 = private unnamed_addr constant [40 x i8] c"android/view/View$AccessibilityDelegate\00", align 16
@.tmr.197 = private unnamed_addr constant [36 x i8] c"android/view/View$DragShadowBuilder\00", align 16
@.tmr.198 = private unnamed_addr constant [30 x i8] c"android/view/View$MeasureSpec\00", align 16
@.tmr.199 = private unnamed_addr constant [46 x i8] c"android/view/View$OnAttachStateChangeListener\00", align 16
@.tmr.200 = private unnamed_addr constant [62 x i8] c"mono/android/view/View_OnAttachStateChangeListenerImplementor\00", align 16
@.tmr.201 = private unnamed_addr constant [34 x i8] c"android/view/View$OnClickListener\00", align 16
@.tmr.202 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnClickListenerImplementor\00", align 16
@.tmr.203 = private unnamed_addr constant [33 x i8] c"android/view/View$OnDragListener\00", align 16
@.tmr.204 = private unnamed_addr constant [40 x i8] c"android/view/View$OnFocusChangeListener\00", align 16
@.tmr.205 = private unnamed_addr constant [56 x i8] c"mono/android/view/View_OnFocusChangeListenerImplementor\00", align 16
@.tmr.206 = private unnamed_addr constant [34 x i8] c"android/view/View$OnHoverListener\00", align 16
@.tmr.207 = private unnamed_addr constant [32 x i8] c"android/view/View$OnKeyListener\00", align 16
@.tmr.208 = private unnamed_addr constant [48 x i8] c"mono/android/view/View_OnKeyListenerImplementor\00", align 16
@.tmr.209 = private unnamed_addr constant [41 x i8] c"android/view/View$OnLayoutChangeListener\00", align 16
@.tmr.210 = private unnamed_addr constant [57 x i8] c"mono/android/view/View_OnLayoutChangeListenerImplementor\00", align 16
@.tmr.211 = private unnamed_addr constant [41 x i8] c"android/view/View$OnScrollChangeListener\00", align 16
@.tmr.212 = private unnamed_addr constant [57 x i8] c"mono/android/view/View_OnScrollChangeListenerImplementor\00", align 16
@.tmr.213 = private unnamed_addr constant [34 x i8] c"android/view/View$OnTouchListener\00", align 16
@.tmr.214 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnTouchListenerImplementor\00", align 16
@.tmr.215 = private unnamed_addr constant [22 x i8] c"android/view/KeyEvent\00", align 16
@.tmr.216 = private unnamed_addr constant [28 x i8] c"android/view/LayoutInflater\00", align 16
@.tmr.217 = private unnamed_addr constant [25 x i8] c"android/view/MotionEvent\00", align 16
@.tmr.218 = private unnamed_addr constant [30 x i8] c"android/view/ViewTreeObserver\00", align 16
@.tmr.219 = private unnamed_addr constant [53 x i8] c"android/view/ViewTreeObserver$OnGlobalLayoutListener\00", align 16
@.tmr.220 = private unnamed_addr constant [20 x i8] c"android/view/Window\00", align 16
@.tmr.221 = private unnamed_addr constant [29 x i8] c"android/view/Window$Callback\00", align 16
@.tmr.222 = private unnamed_addr constant [24 x i8] c"android/view/ActionMode\00", align 16
@.tmr.223 = private unnamed_addr constant [33 x i8] c"android/view/ActionMode$Callback\00", align 16
@.tmr.224 = private unnamed_addr constant [28 x i8] c"android/view/ActionProvider\00", align 16
@.tmr.225 = private unnamed_addr constant [27 x i8] c"android/view/Choreographer\00", align 16
@.tmr.226 = private unnamed_addr constant [25 x i8] c"android/view/ContentInfo\00", align 16
@.tmr.227 = private unnamed_addr constant [33 x i8] c"android/view/ContextThemeWrapper\00", align 16
@.tmr.228 = private unnamed_addr constant [21 x i8] c"android/view/Display\00", align 16
@.tmr.229 = private unnamed_addr constant [23 x i8] c"android/view/DragEvent\00", align 16
@.tmr.230 = private unnamed_addr constant [29 x i8] c"android/view/GestureDetector\00", align 16
@.tmr.231 = private unnamed_addr constant [49 x i8] c"android/view/GestureDetector$OnDoubleTapListener\00", align 16
@.tmr.232 = private unnamed_addr constant [47 x i8] c"android/view/GestureDetector$OnGestureListener\00", align 16
@.tmr.233 = private unnamed_addr constant [41 x i8] c"android/view/ContextMenu$ContextMenuInfo\00", align 16
@.tmr.234 = private unnamed_addr constant [25 x i8] c"android/view/ContextMenu\00", align 16
@.tmr.235 = private unnamed_addr constant [18 x i8] c"android/view/Menu\00", align 16
@.tmr.236 = private unnamed_addr constant [45 x i8] c"android/view/MenuItem$OnActionExpandListener\00", align 16
@.tmr.237 = private unnamed_addr constant [46 x i8] c"android/view/MenuItem$OnMenuItemClickListener\00", align 16
@.tmr.238 = private unnamed_addr constant [22 x i8] c"android/view/MenuItem\00", align 16
@.tmr.239 = private unnamed_addr constant [24 x i8] c"android/view/InputEvent\00", align 16
@.tmr.240 = private unnamed_addr constant [21 x i8] c"android/view/SubMenu\00", align 16
@.tmr.241 = private unnamed_addr constant [41 x i8] c"android/view/SurfaceControlInputReceiver\00", align 16
@.tmr.242 = private unnamed_addr constant [25 x i8] c"android/view/ViewManager\00", align 16
@.tmr.243 = private unnamed_addr constant [24 x i8] c"android/view/ViewParent\00", align 16
@.tmr.244 = private unnamed_addr constant [45 x i8] c"android/view/WindowInsetsAnimationController\00", align 16
@.tmr.245 = private unnamed_addr constant [50 x i8] c"android/view/WindowInsetsAnimationControlListener\00", align 16
@.tmr.246 = private unnamed_addr constant [36 x i8] c"android/view/WindowInsetsController\00", align 16
@.tmr.247 = private unnamed_addr constant [72 x i8] c"android/view/WindowInsetsController$OnControllableInsetsChangedListener\00", align 16
@.tmr.248 = private unnamed_addr constant [27 x i8] c"android/view/WindowManager\00", align 16
@.tmr.249 = private unnamed_addr constant [35 x i8] c"android/view/KeyboardShortcutGroup\00", align 16
@.tmr.250 = private unnamed_addr constant [34 x i8] c"android/view/KeyboardShortcutInfo\00", align 16
@.tmr.251 = private unnamed_addr constant [26 x i8] c"android/view/MenuInflater\00", align 16
@.tmr.252 = private unnamed_addr constant [38 x i8] c"android/view/OrientationEventListener\00", align 16
@.tmr.253 = private unnamed_addr constant [34 x i8] c"android/view/ScaleGestureDetector\00", align 16
@.tmr.254 = private unnamed_addr constant [57 x i8] c"android/view/ScaleGestureDetector$OnScaleGestureListener\00", align 16
@.tmr.255 = private unnamed_addr constant [63 x i8] c"android/view/ScaleGestureDetector$SimpleOnScaleGestureListener\00", align 16
@.tmr.256 = private unnamed_addr constant [25 x i8] c"android/view/SearchEvent\00", align 16
@.tmr.257 = private unnamed_addr constant [28 x i8] c"android/view/SurfaceControl\00", align 16
@.tmr.258 = private unnamed_addr constant [31 x i8] c"android/view/ViewConfiguration\00", align 16
@.tmr.259 = private unnamed_addr constant [23 x i8] c"android/view/ViewGroup\00", align 16
@.tmr.260 = private unnamed_addr constant [36 x i8] c"android/view/ViewGroup$LayoutParams\00", align 16
@.tmr.261 = private unnamed_addr constant [42 x i8] c"android/view/ViewGroup$MarginLayoutParams\00", align 16
@.tmr.262 = private unnamed_addr constant [49 x i8] c"android/view/ViewGroup$OnHierarchyChangeListener\00", align 16
@.tmr.263 = private unnamed_addr constant [65 x i8] c"mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor\00", align 16
@.tmr.264 = private unnamed_addr constant [34 x i8] c"android/view/ViewPropertyAnimator\00", align 16
@.tmr.265 = private unnamed_addr constant [27 x i8] c"android/view/ViewStructure\00", align 16
@.tmr.266 = private unnamed_addr constant [26 x i8] c"android/view/WindowInsets\00", align 16
@.tmr.267 = private unnamed_addr constant [35 x i8] c"android/view/WindowInsetsAnimation\00", align 16
@.tmr.268 = private unnamed_addr constant [42 x i8] c"android/view/WindowInsetsAnimation$Bounds\00", align 16
@.tmr.269 = private unnamed_addr constant [27 x i8] c"android/view/WindowMetrics\00", align 16
@.tmr.270 = private unnamed_addr constant [50 x i8] c"android/view/contentcapture/ContentCaptureSession\00", align 16
@.tmr.271 = private unnamed_addr constant [33 x i8] c"android/view/autofill/AutofillId\00", align 16
@.tmr.272 = private unnamed_addr constant [33 x i8] c"android/view/animation/Animation\00", align 16
@.tmr.273 = private unnamed_addr constant [51 x i8] c"android/view/animation/Animation$AnimationListener\00", align 16
@.tmr.274 = private unnamed_addr constant [67 x i8] c"mono/android/view/animation/Animation_AnimationListenerImplementor\00", align 16
@.tmr.275 = private unnamed_addr constant [36 x i8] c"android/view/animation/AnimationSet\00", align 16
@.tmr.276 = private unnamed_addr constant [38 x i8] c"android/view/animation/AnimationUtils\00", align 16
@.tmr.277 = private unnamed_addr constant [40 x i8] c"android/view/animation/BaseInterpolator\00", align 16
@.tmr.278 = private unnamed_addr constant [46 x i8] c"android/view/animation/DecelerateInterpolator\00", align 16
@.tmr.279 = private unnamed_addr constant [36 x i8] c"android/view/animation/Interpolator\00", align 16
@.tmr.280 = private unnamed_addr constant [42 x i8] c"android/view/animation/LinearInterpolator\00", align 16
@.tmr.281 = private unnamed_addr constant [44 x i8] c"android/view/inputmethod/InputMethodManager\00", align 16
@.tmr.282 = private unnamed_addr constant [46 x i8] c"android/view/accessibility/AccessibilityEvent\00", align 16
@.tmr.283 = private unnamed_addr constant [49 x i8] c"android/view/accessibility/AccessibilityNodeInfo\00", align 16
@.tmr.284 = private unnamed_addr constant [68 x i8] c"android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo\00", align 16
@.tmr.285 = private unnamed_addr constant [47 x i8] c"android/view/accessibility/AccessibilityRecord\00", align 16
@.tmr.286 = private unnamed_addr constant [51 x i8] c"android/view/accessibility/AccessibilityWindowInfo\00", align 16
@.tmr.287 = private unnamed_addr constant [40 x i8] c"mono/android/runtime/InputStreamAdapter\00", align 16
@.tmr.288 = private unnamed_addr constant [31 x i8] c"mono/android/runtime/JavaArray\00", align 16
@.tmr.289 = private unnamed_addr constant [21 x i8] c"java/util/Collection\00", align 16
@.tmr.290 = private unnamed_addr constant [18 x i8] c"java/util/HashMap\00", align 16
@.tmr.291 = private unnamed_addr constant [20 x i8] c"java/util/ArrayList\00", align 16
@.tmr.292 = private unnamed_addr constant [32 x i8] c"mono/android/runtime/JavaObject\00", align 16
@.tmr.293 = private unnamed_addr constant [35 x i8] c"android/runtime/JavaProxyThrowable\00", align 16
@.tmr.294 = private unnamed_addr constant [18 x i8] c"java/util/HashSet\00", align 16
@.tmr.295 = private unnamed_addr constant [41 x i8] c"mono/android/runtime/OutputStreamAdapter\00", align 16
@.tmr.296 = private unnamed_addr constant [36 x i8] c"android/runtime/XmlReaderPullParser\00", align 16
@.tmr.297 = private unnamed_addr constant [16 x i8] c"android/net/Uri\00", align 16
@.tmr.298 = private unnamed_addr constant [44 x i8] c"android/net/http/X509TrustManagerExtensions\00", align 16
@.tmr.299 = private unnamed_addr constant [24 x i8] c"android/graphics/Bitmap\00", align 16
@.tmr.300 = private unnamed_addr constant [39 x i8] c"android/graphics/Bitmap$CompressFormat\00", align 16
@.tmr.301 = private unnamed_addr constant [31 x i8] c"android/graphics/Bitmap$Config\00", align 16
@.tmr.302 = private unnamed_addr constant [24 x i8] c"android/graphics/Canvas\00", align 16
@.tmr.303 = private unnamed_addr constant [31 x i8] c"android/graphics/BitmapFactory\00", align 16
@.tmr.304 = private unnamed_addr constant [30 x i8] c"android/graphics/BitmapShader\00", align 16
@.tmr.305 = private unnamed_addr constant [27 x i8] c"android/graphics/BlendMode\00", align 16
@.tmr.306 = private unnamed_addr constant [32 x i8] c"android/graphics/BlurMaskFilter\00", align 16
@.tmr.307 = private unnamed_addr constant [37 x i8] c"android/graphics/BlurMaskFilter$Blur\00", align 16
@.tmr.308 = private unnamed_addr constant [29 x i8] c"android/graphics/ColorFilter\00", align 16
@.tmr.309 = private unnamed_addr constant [23 x i8] c"android/graphics/Color\00", align 16
@.tmr.310 = private unnamed_addr constant [32 x i8] c"android/graphics/DashPathEffect\00", align 16
@.tmr.311 = private unnamed_addr constant [24 x i8] c"android/graphics/Insets\00", align 16
@.tmr.312 = private unnamed_addr constant [32 x i8] c"android/graphics/LinearGradient\00", align 16
@.tmr.313 = private unnamed_addr constant [28 x i8] c"android/graphics/MaskFilter\00", align 16
@.tmr.314 = private unnamed_addr constant [24 x i8] c"android/graphics/Matrix\00", align 16
@.tmr.315 = private unnamed_addr constant [23 x i8] c"android/graphics/Paint\00", align 16
@.tmr.316 = private unnamed_addr constant [27 x i8] c"android/graphics/Paint$Cap\00", align 16
@.tmr.317 = private unnamed_addr constant [35 x i8] c"android/graphics/Paint$FontMetrics\00", align 16
@.tmr.318 = private unnamed_addr constant [38 x i8] c"android/graphics/Paint$FontMetricsInt\00", align 16
@.tmr.319 = private unnamed_addr constant [28 x i8] c"android/graphics/Paint$Join\00", align 16
@.tmr.320 = private unnamed_addr constant [29 x i8] c"android/graphics/Paint$Style\00", align 16
@.tmr.321 = private unnamed_addr constant [22 x i8] c"android/graphics/Path\00", align 16
@.tmr.322 = private unnamed_addr constant [32 x i8] c"android/graphics/Path$Direction\00", align 16
@.tmr.323 = private unnamed_addr constant [31 x i8] c"android/graphics/Path$FillType\00", align 16
@.tmr.324 = private unnamed_addr constant [25 x i8] c"android/graphics/Path$Op\00", align 16
@.tmr.325 = private unnamed_addr constant [28 x i8] c"android/graphics/PathEffect\00", align 16
@.tmr.326 = private unnamed_addr constant [23 x i8] c"android/graphics/Point\00", align 16
@.tmr.327 = private unnamed_addr constant [24 x i8] c"android/graphics/PointF\00", align 16
@.tmr.328 = private unnamed_addr constant [28 x i8] c"android/graphics/PorterDuff\00", align 16
@.tmr.329 = private unnamed_addr constant [33 x i8] c"android/graphics/PorterDuff$Mode\00", align 16
@.tmr.330 = private unnamed_addr constant [36 x i8] c"android/graphics/PorterDuffXfermode\00", align 16
@.tmr.331 = private unnamed_addr constant [32 x i8] c"android/graphics/RadialGradient\00", align 16
@.tmr.332 = private unnamed_addr constant [22 x i8] c"android/graphics/Rect\00", align 16
@.tmr.333 = private unnamed_addr constant [23 x i8] c"android/graphics/RectF\00", align 16
@.tmr.334 = private unnamed_addr constant [24 x i8] c"android/graphics/Region\00", align 16
@.tmr.335 = private unnamed_addr constant [27 x i8] c"android/graphics/Region$Op\00", align 16
@.tmr.336 = private unnamed_addr constant [24 x i8] c"android/graphics/Shader\00", align 16
@.tmr.337 = private unnamed_addr constant [33 x i8] c"android/graphics/Shader$TileMode\00", align 16
@.tmr.338 = private unnamed_addr constant [26 x i8] c"android/graphics/Typeface\00", align 16
@.tmr.339 = private unnamed_addr constant [26 x i8] c"android/graphics/Xfermode\00", align 16
@.tmr.340 = private unnamed_addr constant [35 x i8] c"android/graphics/drawable/Drawable\00", align 16
@.tmr.341 = private unnamed_addr constant [49 x i8] c"android/graphics/drawable/Drawable$ConstantState\00", align 16
@.tmr.342 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/DrawableContainer\00", align 16
@.tmr.343 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/InsetDrawable\00", align 16
@.tmr.344 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/LayerDrawable\00", align 16
@.tmr.345 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/AnimationDrawable\00", align 16
@.tmr.346 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/ColorDrawable\00", align 16
@.tmr.347 = private unnamed_addr constant [42 x i8] c"android/graphics/drawable/DrawableWrapper\00", align 16
@.tmr.348 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/GradientDrawable\00", align 16
@.tmr.349 = private unnamed_addr constant [55 x i8] c"android/graphics/drawable/GradientDrawable$Orientation\00", align 16
@.tmr.350 = private unnamed_addr constant [37 x i8] c"android/graphics/drawable/Animatable\00", align 16
@.tmr.351 = private unnamed_addr constant [31 x i8] c"android/graphics/drawable/Icon\00", align 16
@.tmr.352 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/PaintDrawable\00", align 16
@.tmr.353 = private unnamed_addr constant [41 x i8] c"android/graphics/drawable/RippleDrawable\00", align 16
@.tmr.354 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/ShapeDrawable\00", align 16
@.tmr.355 = private unnamed_addr constant [54 x i8] c"android/graphics/drawable/ShapeDrawable$ShaderFactory\00", align 16
@.tmr.356 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/StateListDrawable\00", align 16
@.tmr.357 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/shapes/OvalShape\00", align 16
@.tmr.358 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/shapes/RectShape\00", align 16
@.tmr.359 = private unnamed_addr constant [39 x i8] c"android/graphics/drawable/shapes/Shape\00", align 16
@.tmr.360 = private unnamed_addr constant [32 x i8] c"android/content/ContentProvider\00", align 16
@.tmr.361 = private unnamed_addr constant [30 x i8] c"android/content/ContentValues\00", align 16
@.tmr.362 = private unnamed_addr constant [24 x i8] c"android/content/Context\00", align 16
@.tmr.363 = private unnamed_addr constant [23 x i8] c"android/content/Intent\00", align 16
@.tmr.364 = private unnamed_addr constant [34 x i8] c"android/content/BroadcastReceiver\00", align 16
@.tmr.365 = private unnamed_addr constant [25 x i8] c"android/content/ClipData\00", align 16
@.tmr.366 = private unnamed_addr constant [30 x i8] c"android/content/ClipData$Item\00", align 16
@.tmr.367 = private unnamed_addr constant [32 x i8] c"android/content/ClipDescription\00", align 16
@.tmr.368 = private unnamed_addr constant [30 x i8] c"android/content/ComponentName\00", align 16
@.tmr.369 = private unnamed_addr constant [32 x i8] c"android/content/ContentResolver\00", align 16
@.tmr.370 = private unnamed_addr constant [31 x i8] c"android/content/ContextWrapper\00", align 16
@.tmr.371 = private unnamed_addr constant [49 x i8] c"android/content/DialogInterface$OnCancelListener\00", align 16
@.tmr.372 = private unnamed_addr constant [65 x i8] c"mono/android/content/DialogInterface_OnCancelListenerImplementor\00", align 16
@.tmr.373 = private unnamed_addr constant [48 x i8] c"android/content/DialogInterface$OnClickListener\00", align 16
@.tmr.374 = private unnamed_addr constant [64 x i8] c"mono/android/content/DialogInterface_OnClickListenerImplementor\00", align 16
@.tmr.375 = private unnamed_addr constant [50 x i8] c"android/content/DialogInterface$OnDismissListener\00", align 16
@.tmr.376 = private unnamed_addr constant [66 x i8] c"mono/android/content/DialogInterface_OnDismissListenerImplementor\00", align 16
@.tmr.377 = private unnamed_addr constant [46 x i8] c"android/content/DialogInterface$OnKeyListener\00", align 16
@.tmr.378 = private unnamed_addr constant [59 x i8] c"android/content/DialogInterface$OnMultiChoiceClickListener\00", align 16
@.tmr.379 = private unnamed_addr constant [47 x i8] c"android/content/DialogInterface$OnShowListener\00", align 16
@.tmr.380 = private unnamed_addr constant [63 x i8] c"mono/android/content/DialogInterface_OnShowListenerImplementor\00", align 16
@.tmr.381 = private unnamed_addr constant [32 x i8] c"android/content/DialogInterface\00", align 16
@.tmr.382 = private unnamed_addr constant [29 x i8] c"android/content/IntentFilter\00", align 16
@.tmr.383 = private unnamed_addr constant [29 x i8] c"android/content/IntentSender\00", align 16
@.tmr.384 = private unnamed_addr constant [41 x i8] c"android/content/SharedPreferences$Editor\00", align 16
@.tmr.385 = private unnamed_addr constant [67 x i8] c"android/content/SharedPreferences$OnSharedPreferenceChangeListener\00", align 16
@.tmr.386 = private unnamed_addr constant [34 x i8] c"android/content/SharedPreferences\00", align 16
@.tmr.387 = private unnamed_addr constant [24 x i8] c"android/content/LocusId\00", align 16
@.tmr.388 = private unnamed_addr constant [40 x i8] c"android/content/res/AssetFileDescriptor\00", align 16
@.tmr.389 = private unnamed_addr constant [33 x i8] c"android/content/res/AssetManager\00", align 16
@.tmr.390 = private unnamed_addr constant [35 x i8] c"android/content/res/ColorStateList\00", align 16
@.tmr.391 = private unnamed_addr constant [34 x i8] c"android/content/res/Configuration\00", align 16
@.tmr.392 = private unnamed_addr constant [30 x i8] c"android/content/res/Resources\00", align 16
@.tmr.393 = private unnamed_addr constant [36 x i8] c"android/content/res/Resources$Theme\00", align 16
@.tmr.394 = private unnamed_addr constant [31 x i8] c"android/content/res/TypedArray\00", align 16
@.tmr.395 = private unnamed_addr constant [34 x i8] c"android/content/pm/PackageManager\00", align 16
@.tmr.396 = private unnamed_addr constant [35 x i8] c"android/content/pm/ApplicationInfo\00", align 16
@.tmr.397 = private unnamed_addr constant [31 x i8] c"android/content/pm/PackageInfo\00", align 16
@.tmr.398 = private unnamed_addr constant [35 x i8] c"android/content/pm/PackageItemInfo\00", align 16
@.tmr.399 = private unnamed_addr constant [32 x i8] c"android/content/pm/ShortcutInfo\00", align 16
@.tmr.400 = private unnamed_addr constant [40 x i8] c"android/content/pm/ShortcutInfo$Builder\00", align 16
@.tmr.401 = private unnamed_addr constant [35 x i8] c"android/content/pm/ShortcutManager\00", align 16
@.tmr.402 = private unnamed_addr constant [29 x i8] c"android/content/pm/Signature\00", align 16
@.tmr.403 = private unnamed_addr constant [21 x i8] c"android/app/Activity\00", align 16
@.tmr.404 = private unnamed_addr constant [25 x i8] c"android/app/AlarmManager\00", align 16
@.tmr.405 = private unnamed_addr constant [24 x i8] c"android/app/AlertDialog\00", align 16
@.tmr.406 = private unnamed_addr constant [32 x i8] c"android/app/AlertDialog$Builder\00", align 16
@.tmr.407 = private unnamed_addr constant [24 x i8] c"android/app/Application\00", align 16
@.tmr.408 = private unnamed_addr constant [51 x i8] c"android/app/Application$ActivityLifecycleCallbacks\00", align 16
@.tmr.409 = private unnamed_addr constant [29 x i8] c"android/app/DatePickerDialog\00", align 16
@.tmr.410 = private unnamed_addr constant [47 x i8] c"android/app/DatePickerDialog$OnDateSetListener\00", align 16
@.tmr.411 = private unnamed_addr constant [63 x i8] c"mono/android/app/DatePickerDialog_OnDateSetListenerImplementor\00", align 16
@.tmr.412 = private unnamed_addr constant [19 x i8] c"android/app/Dialog\00", align 16
@.tmr.413 = private unnamed_addr constant [25 x i8] c"android/app/Notification\00", align 16
@.tmr.414 = private unnamed_addr constant [40 x i8] c"android/app/Notification$BubbleMetadata\00", align 16
@.tmr.415 = private unnamed_addr constant [33 x i8] c"android/app/Notification$Builder\00", align 16
@.tmr.416 = private unnamed_addr constant [32 x i8] c"android/app/NotificationManager\00", align 16
@.tmr.417 = private unnamed_addr constant [29 x i8] c"android/app/TimePickerDialog\00", align 16
@.tmr.418 = private unnamed_addr constant [47 x i8] c"android/app/TimePickerDialog$OnTimeSetListener\00", align 16
@.tmr.419 = private unnamed_addr constant [63 x i8] c"mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor\00", align 16
@.tmr.420 = private unnamed_addr constant [26 x i8] c"android/app/UiModeManager\00", align 16
@.tmr.421 = private unnamed_addr constant [32 x i8] c"android/app/NotificationChannel\00", align 16
@.tmr.422 = private unnamed_addr constant [37 x i8] c"android/app/NotificationChannelGroup\00", align 16
@.tmr.423 = private unnamed_addr constant [26 x i8] c"android/app/PendingIntent\00", align 16
@.tmr.424 = private unnamed_addr constant [19 x i8] c"android/app/Person\00", align 16
@.tmr.425 = private unnamed_addr constant [27 x i8] c"android/app/SearchableInfo\00", align 16
@.tmr.426 = private unnamed_addr constant [24 x i8] c"java/text/DecimalFormat\00", align 16
@.tmr.427 = private unnamed_addr constant [31 x i8] c"java/text/DecimalFormatSymbols\00", align 16
@.tmr.428 = private unnamed_addr constant [23 x i8] c"java/text/NumberFormat\00", align 16
@.tmr.429 = private unnamed_addr constant [17 x i8] c"java/text/Format\00", align 16
@.tmr.430 = private unnamed_addr constant [26 x i8] c"java/net/ConnectException\00", align 16
@.tmr.431 = private unnamed_addr constant [27 x i8] c"java/net/HttpURLConnection\00", align 16
@.tmr.432 = private unnamed_addr constant [27 x i8] c"java/net/InetSocketAddress\00", align 16
@.tmr.433 = private unnamed_addr constant [27 x i8] c"java/net/ProtocolException\00", align 16
@.tmr.434 = private unnamed_addr constant [15 x i8] c"java/net/Proxy\00", align 1
@.tmr.435 = private unnamed_addr constant [20 x i8] c"java/net/Proxy$Type\00", align 16
@.tmr.436 = private unnamed_addr constant [16 x i8] c"java/net/Socket\00", align 16
@.tmr.437 = private unnamed_addr constant [23 x i8] c"java/net/SocketAddress\00", align 16
@.tmr.438 = private unnamed_addr constant [25 x i8] c"java/net/SocketException\00", align 16
@.tmr.439 = private unnamed_addr constant [32 x i8] c"java/net/SocketTimeoutException\00", align 16
@.tmr.440 = private unnamed_addr constant [33 x i8] c"java/net/UnknownServiceException\00", align 16
@.tmr.441 = private unnamed_addr constant [13 x i8] c"java/net/URL\00", align 1
@.tmr.442 = private unnamed_addr constant [23 x i8] c"java/net/URLConnection\00", align 16
@.tmr.443 = private unnamed_addr constant [39 x i8] c"java/security/GeneralSecurityException\00", align 16
@.tmr.444 = private unnamed_addr constant [18 x i8] c"java/security/Key\00", align 16
@.tmr.445 = private unnamed_addr constant [24 x i8] c"java/security/Principal\00", align 16
@.tmr.446 = private unnamed_addr constant [25 x i8] c"java/security/PrivateKey\00", align 16
@.tmr.447 = private unnamed_addr constant [25 x i8] c"java/security/KeyFactory\00", align 16
@.tmr.448 = private unnamed_addr constant [23 x i8] c"java/security/KeyStore\00", align 16
@.tmr.449 = private unnamed_addr constant [27 x i8] c"java/security/SecureRandom\00", align 16
@.tmr.450 = private unnamed_addr constant [34 x i8] c"java/security/spec/EncodedKeySpec\00", align 16
@.tmr.451 = private unnamed_addr constant [27 x i8] c"java/security/spec/KeySpec\00", align 16
@.tmr.452 = private unnamed_addr constant [39 x i8] c"java/security/spec/PKCS8EncodedKeySpec\00", align 16
@.tmr.453 = private unnamed_addr constant [31 x i8] c"java/security/cert/Certificate\00", align 16
@.tmr.454 = private unnamed_addr constant [40 x i8] c"java/security/cert/CertificateException\00", align 16
@.tmr.455 = private unnamed_addr constant [35 x i8] c"java/security/cert/X509Certificate\00", align 16
@.tmr.456 = private unnamed_addr constant [30 x i8] c"java/nio/channels/FileChannel\00", align 16
@.tmr.457 = private unnamed_addr constant [51 x i8] c"java/nio/channels/spi/AbstractInterruptibleChannel\00", align 16
@.tmr.458 = private unnamed_addr constant [13 x i8] c"java/io/File\00", align 1
@.tmr.459 = private unnamed_addr constant [23 x i8] c"java/io/FileDescriptor\00", align 16
@.tmr.460 = private unnamed_addr constant [24 x i8] c"java/io/FileInputStream\00", align 16
@.tmr.461 = private unnamed_addr constant [30 x i8] c"java/io/FileNotFoundException\00", align 16
@.tmr.462 = private unnamed_addr constant [18 x i8] c"java/io/Closeable\00", align 16
@.tmr.463 = private unnamed_addr constant [20 x i8] c"java/io/InputStream\00", align 16
@.tmr.464 = private unnamed_addr constant [31 x i8] c"java/io/InterruptedIOException\00", align 16
@.tmr.465 = private unnamed_addr constant [20 x i8] c"java/io/IOException\00", align 16
@.tmr.466 = private unnamed_addr constant [21 x i8] c"java/io/Serializable\00", align 16
@.tmr.467 = private unnamed_addr constant [21 x i8] c"java/io/OutputStream\00", align 16
@.tmr.468 = private unnamed_addr constant [20 x i8] c"java/io/PrintWriter\00", align 16
@.tmr.469 = private unnamed_addr constant [25 x i8] c"java/io/RandomAccessFile\00", align 16
@.tmr.470 = private unnamed_addr constant [15 x i8] c"java/io/Reader\00", align 1
@.tmr.471 = private unnamed_addr constant [15 x i8] c"java/io/Writer\00", align 1
@.tmr.472 = private unnamed_addr constant [15 x i8] c"java/util/List\00", align 1
@.tmr.473 = private unnamed_addr constant [21 x i8] c"java/util/Comparator\00", align 16
@.tmr.474 = private unnamed_addr constant [22 x i8] c"java/util/Enumeration\00", align 16
@.tmr.475 = private unnamed_addr constant [19 x i8] c"java/util/Iterator\00", align 16
@.tmr.476 = private unnamed_addr constant [23 x i8] c"java/util/ListIterator\00", align 16
@.tmr.477 = private unnamed_addr constant [30 x i8] c"java/util/SequencedCollection\00", align 16
@.tmr.478 = private unnamed_addr constant [22 x i8] c"java/util/Spliterator\00", align 16
@.tmr.479 = private unnamed_addr constant [17 x i8] c"java/util/Locale\00", align 16
@.tmr.480 = private unnamed_addr constant [17 x i8] c"java/util/Random\00", align 16
@.tmr.481 = private unnamed_addr constant [28 x i8] c"java/util/function/Consumer\00", align 16
@.tmr.482 = private unnamed_addr constant [28 x i8] c"java/util/function/Function\00", align 16
@.tmr.483 = private unnamed_addr constant [31 x i8] c"java/util/function/IntConsumer\00", align 16
@.tmr.484 = private unnamed_addr constant [31 x i8] c"java/util/function/IntFunction\00", align 16
@.tmr.485 = private unnamed_addr constant [29 x i8] c"java/util/function/Predicate\00", align 16
@.tmr.486 = private unnamed_addr constant [36 x i8] c"java/util/function/ToDoubleFunction\00", align 16
@.tmr.487 = private unnamed_addr constant [33 x i8] c"java/util/function/ToIntFunction\00", align 16
@.tmr.488 = private unnamed_addr constant [34 x i8] c"java/util/function/ToLongFunction\00", align 16
@.tmr.489 = private unnamed_addr constant [33 x i8] c"java/util/function/UnaryOperator\00", align 16
@.tmr.490 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/Executor\00", align 16
@.tmr.491 = private unnamed_addr constant [28 x i8] c"java/util/concurrent/Future\00", align 16
@.tmr.492 = private unnamed_addr constant [34 x i8] c"java/util/concurrent/Future$State\00", align 16
@.tmr.493 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/TimeUnit\00", align 16
@.tmr.494 = private unnamed_addr constant [44 x i8] c"java/util/concurrent/atomic/AtomicReference\00", align 16
@.tmr.495 = private unnamed_addr constant [18 x i8] c"java/lang/Boolean\00", align 16
@.tmr.496 = private unnamed_addr constant [15 x i8] c"java/lang/Byte\00", align 1
@.tmr.497 = private unnamed_addr constant [20 x i8] c"java/lang/Character\00", align 16
@.tmr.498 = private unnamed_addr constant [16 x i8] c"java/lang/Class\00", align 16
@.tmr.499 = private unnamed_addr constant [33 x i8] c"java/lang/ClassNotFoundException\00", align 16
@.tmr.500 = private unnamed_addr constant [17 x i8] c"java/lang/Double\00", align 16
@.tmr.501 = private unnamed_addr constant [20 x i8] c"java/lang/Exception\00", align 16
@.tmr.502 = private unnamed_addr constant [16 x i8] c"java/lang/Float\00", align 16
@.tmr.503 = private unnamed_addr constant [23 x i8] c"java/lang/CharSequence\00", align 16
@.tmr.504 = private unnamed_addr constant [18 x i8] c"java/lang/Integer\00", align 16
@.tmr.505 = private unnamed_addr constant [15 x i8] c"java/lang/Long\00", align 1
@.tmr.506 = private unnamed_addr constant [17 x i8] c"java/lang/Object\00", align 16
@.tmr.507 = private unnamed_addr constant [24 x i8] c"mono/java/lang/Runnable\00", align 16
@.tmr.508 = private unnamed_addr constant [27 x i8] c"java/lang/RuntimeException\00", align 16
@.tmr.509 = private unnamed_addr constant [16 x i8] c"java/lang/Short\00", align 16
@.tmr.510 = private unnamed_addr constant [17 x i8] c"java/lang/String\00", align 16
@.tmr.511 = private unnamed_addr constant [17 x i8] c"java/lang/Thread\00", align 16
@.tmr.512 = private unnamed_addr constant [35 x i8] c"mono/java/lang/RunnableImplementor\00", align 16
@.tmr.513 = private unnamed_addr constant [20 x i8] c"java/lang/Throwable\00", align 16
@.tmr.514 = private unnamed_addr constant [29 x i8] c"java/lang/ClassCastException\00", align 16
@.tmr.515 = private unnamed_addr constant [22 x i8] c"java/lang/ClassLoader\00", align 16
@.tmr.516 = private unnamed_addr constant [15 x i8] c"java/lang/Enum\00", align 1
@.tmr.517 = private unnamed_addr constant [16 x i8] c"java/lang/Error\00", align 16
@.tmr.518 = private unnamed_addr constant [21 x i8] c"java/lang/Appendable\00", align 16
@.tmr.519 = private unnamed_addr constant [24 x i8] c"java/lang/AutoCloseable\00", align 16
@.tmr.520 = private unnamed_addr constant [19 x i8] c"java/lang/Iterable\00", align 16
@.tmr.521 = private unnamed_addr constant [35 x i8] c"java/lang/IllegalArgumentException\00", align 16
@.tmr.522 = private unnamed_addr constant [32 x i8] c"java/lang/IllegalStateException\00", align 16
@.tmr.523 = private unnamed_addr constant [36 x i8] c"java/lang/IndexOutOfBoundsException\00", align 16
@.tmr.524 = private unnamed_addr constant [19 x i8] c"java/lang/Runnable\00", align 16
@.tmr.525 = private unnamed_addr constant [17 x i8] c"java/lang/System\00", align 16
@.tmr.526 = private unnamed_addr constant [23 x i8] c"java/lang/LinkageError\00", align 16
@.tmr.527 = private unnamed_addr constant [31 x i8] c"java/lang/NoClassDefFoundError\00", align 16
@.tmr.528 = private unnamed_addr constant [31 x i8] c"java/lang/NullPointerException\00", align 16
@.tmr.529 = private unnamed_addr constant [17 x i8] c"java/lang/Number\00", align 16
@.tmr.530 = private unnamed_addr constant [39 x i8] c"java/lang/ReflectiveOperationException\00", align 16
@.tmr.531 = private unnamed_addr constant [28 x i8] c"java/lang/SecurityException\00", align 16
@.tmr.532 = private unnamed_addr constant [28 x i8] c"java/lang/StackTraceElement\00", align 16
@.tmr.533 = private unnamed_addr constant [40 x i8] c"java/lang/UnsupportedOperationException\00", align 16
@.tmr.534 = private unnamed_addr constant [15 x i8] c"java/lang/Void\00", align 1
@.tmr.535 = private unnamed_addr constant [24 x i8] c"java/lang/ref/Reference\00", align 16
@.tmr.536 = private unnamed_addr constant [28 x i8] c"java/lang/ref/WeakReference\00", align 16
@.tmr.537 = private unnamed_addr constant [32 x i8] c"java/lang/annotation/Annotation\00", align 16
@.tmr.538 = private unnamed_addr constant [25 x i8] c"mono/android/TypeManager\00", align 16
@.tmr.539 = private unnamed_addr constant [52 x i8] c"com/google/android/gms/common/GoogleApiAvailability\00", align 16
@.tmr.540 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/common/api/internal/ApiKey\00", align 16
@.tmr.541 = private unnamed_addr constant [62 x i8] c"com/google/android/gms/common/api/internal/BaseImplementation\00", align 16
@.tmr.542 = private unnamed_addr constant [76 x i8] c"com/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl\00", align 16
@.tmr.543 = private unnamed_addr constant [61 x i8] c"com/google/android/gms/common/api/internal/BasePendingResult\00", align 16
@.tmr.544 = private unnamed_addr constant [60 x i8] c"com/google/android/gms/common/api/internal/GoogleApiManager\00", align 16
@.tmr.545 = private unnamed_addr constant [63 x i8] c"com/google/android/gms/common/api/internal/ConnectionCallbacks\00", align 16
@.tmr.546 = private unnamed_addr constant [70 x i8] c"com/google/android/gms/common/api/internal/OnConnectionFailedListener\00", align 16
@.tmr.547 = private unnamed_addr constant [54 x i8] c"com/google/android/gms/common/api/internal/RemoteCall\00", align 16
@.tmr.548 = private unnamed_addr constant [68 x i8] c"com/google/android/gms/common/api/internal/SignInConnectionListener\00", align 16
@.tmr.549 = private unnamed_addr constant [58 x i8] c"com/google/android/gms/common/api/internal/ListenerHolder\00", align 16
@.tmr.550 = private unnamed_addr constant [70 x i8] c"com/google/android/gms/common/api/internal/ListenerHolder$ListenerKey\00", align 16
@.tmr.551 = private unnamed_addr constant [67 x i8] c"com/google/android/gms/common/api/internal/ListenerHolder$Notifier\00", align 16
@.tmr.552 = private unnamed_addr constant [66 x i8] c"com/google/android/gms/common/api/internal/RegisterListenerMethod\00", align 16
@.tmr.553 = private unnamed_addr constant [63 x i8] c"com/google/android/gms/common/api/internal/RegistrationMethods\00", align 16
@.tmr.554 = private unnamed_addr constant [71 x i8] c"com/google/android/gms/common/api/internal/RegistrationMethods$Builder\00", align 16
@.tmr.555 = private unnamed_addr constant [55 x i8] c"com/google/android/gms/common/api/internal/TaskApiCall\00", align 16
@.tmr.556 = private unnamed_addr constant [63 x i8] c"com/google/android/gms/common/api/internal/TaskApiCall$Builder\00", align 16
@.tmr.557 = private unnamed_addr constant [68 x i8] c"com/google/android/gms/common/api/internal/UnregisterListenerMethod\00", align 16
@.tmr.558 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/common/api/internal/zaaa\00", align 16
@.tmr.559 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/common/api/internal/zaab\00", align 16
@.tmr.560 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/common/api/internal/zabk\00", align 16
@.tmr.561 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/common/api/internal/zabr\00", align 16
@.tmr.562 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/common/api/internal/zabs\00", align 16
@.tmr.563 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/common/api/internal/zacs\00", align 16
@.tmr.564 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/common/api/internal/zai\00", align 16
@.tmr.565 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/common/api/internal/zal\00", align 16
@.tmr.566 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/common/api/internal/zap\00", align 16
@.tmr.567 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/common/api/GoogleApiClient\00", align 16
@.tmr.568 = private unnamed_addr constant [70 x i8] c"com/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks\00", align 16
@.tmr.569 = private unnamed_addr constant [77 x i8] c"com/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener\00", align 16
@.tmr.570 = private unnamed_addr constant [38 x i8] c"com/google/android/gms/common/api/Api\00", align 16
@.tmr.571 = private unnamed_addr constant [60 x i8] c"com/google/android/gms/common/api/Api$AbstractClientBuilder\00", align 16
@.tmr.572 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/common/api/Api$AnyClient\00", align 16
@.tmr.573 = private unnamed_addr constant [51 x i8] c"com/google/android/gms/common/api/Api$AnyClientKey\00", align 16
@.tmr.574 = private unnamed_addr constant [56 x i8] c"com/google/android/gms/common/api/Api$BaseClientBuilder\00", align 16
@.tmr.575 = private unnamed_addr constant [45 x i8] c"com/google/android/gms/common/api/Api$Client\00", align 16
@.tmr.576 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/common/api/Api$ClientKey\00", align 16
@.tmr.577 = private unnamed_addr constant [44 x i8] c"com/google/android/gms/common/api/GoogleApi\00", align 16
@.tmr.578 = private unnamed_addr constant [53 x i8] c"com/google/android/gms/common/api/GoogleApi$Settings\00", align 16
@.tmr.579 = private unnamed_addr constant [44 x i8] c"com/google/android/gms/common/api/HasApiKey\00", align 16
@.tmr.580 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/common/api/PendingResult\00", align 16
@.tmr.581 = private unnamed_addr constant [63 x i8] c"com/google/android/gms/common/api/PendingResult$StatusListener\00", align 16
@.tmr.582 = private unnamed_addr constant [79 x i8] c"mono/com/google/android/gms/common/api/PendingResult_StatusListenerImplementor\00", align 16
@.tmr.583 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/common/api/ResultTransform\00", align 16
@.tmr.584 = private unnamed_addr constant [52 x i8] c"com/google/android/gms/common/api/TransformedResult\00", align 16
@.tmr.585 = private unnamed_addr constant [50 x i8] c"com/google/android/material/shape/CornerTreatment\00", align 16
@.tmr.586 = private unnamed_addr constant [48 x i8] c"com/google/android/material/shape/EdgeTreatment\00", align 16
@.tmr.587 = private unnamed_addr constant [45 x i8] c"com/google/android/material/shape/CornerSize\00", align 16
@.tmr.588 = private unnamed_addr constant [56 x i8] c"com/google/android/material/shape/MaterialShapeDrawable\00", align 16
@.tmr.589 = private unnamed_addr constant [83 x i8] c"com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState\00", align 16
@.tmr.590 = private unnamed_addr constant [55 x i8] c"com/google/android/material/shape/ShapeAppearanceModel\00", align 16
@.tmr.591 = private unnamed_addr constant [63 x i8] c"com/google/android/material/shape/ShapeAppearanceModel$Builder\00", align 16
@.tmr.592 = private unnamed_addr constant [79 x i8] c"com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator\00", align 16
@.tmr.593 = private unnamed_addr constant [44 x i8] c"com/google/android/material/shape/ShapePath\00", align 16
@.tmr.594 = private unnamed_addr constant [49 x i8] c"com/google/android/material/shape/ShapePathModel\00", align 16
@.tmr.595 = private unnamed_addr constant [57 x i8] c"com/google/android/material/imageview/ShapeableImageView\00", align 16
@.tmr.596 = private unnamed_addr constant [63 x i8] c"com/google/android/material/elevation/ElevationOverlayProvider\00", align 16
@.tmr.597 = private unnamed_addr constant [62 x i8] c"com/google/android/material/dialog/MaterialAlertDialogBuilder\00", align 16
@.tmr.598 = private unnamed_addr constant [54 x i8] c"com/google/android/material/checkbox/MaterialCheckBox\00", align 16
@.tmr.599 = private unnamed_addr constant [84 x i8] c"com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener\00", align 16
@.tmr.600 = private unnamed_addr constant [100 x i8] c"mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor\00", align 16
@.tmr.601 = private unnamed_addr constant [77 x i8] c"com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener\00", align 16
@.tmr.602 = private unnamed_addr constant [93 x i8] c"mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor\00", align 16
@.tmr.603 = private unnamed_addr constant [50 x i8] c"com/google/android/material/button/MaterialButton\00", align 16
@.tmr.604 = private unnamed_addr constant [74 x i8] c"com/google/android/material/button/MaterialButton$OnCheckedChangeListener\00", align 16
@.tmr.605 = private unnamed_addr constant [90 x i8] c"mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor\00", align 16
@.tmr.606 = private unnamed_addr constant [60 x i8] c"com/google/android/material/bottomsheet/BottomSheetBehavior\00", align 16
@.tmr.607 = private unnamed_addr constant [80 x i8] c"com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback\00", align 16
@.tmr.608 = private unnamed_addr constant [58 x i8] c"com/google/android/material/bottomsheet/BottomSheetDialog\00", align 16
@.tmr.609 = private unnamed_addr constant [48 x i8] c"com/google/android/material/badge/BadgeDrawable\00", align 16
@.tmr.610 = private unnamed_addr constant [57 x i8] c"com/google/android/material/navigation/NavigationBarView\00", align 16
@.tmr.611 = private unnamed_addr constant [82 x i8] c"com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener\00", align 16
@.tmr.612 = private unnamed_addr constant [98 x i8] c"mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor\00", align 16
@.tmr.613 = private unnamed_addr constant [80 x i8] c"com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener\00", align 16
@.tmr.614 = private unnamed_addr constant [96 x i8] c"mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor\00", align 16
@.tmr.615 = private unnamed_addr constant [61 x i8] c"com/google/android/material/navigation/NavigationBarItemView\00", align 16
@.tmr.616 = private unnamed_addr constant [61 x i8] c"com/google/android/material/navigation/NavigationBarMenuView\00", align 16
@.tmr.617 = private unnamed_addr constant [62 x i8] c"com/google/android/material/navigation/NavigationBarPresenter\00", align 16
@.tmr.618 = private unnamed_addr constant [54 x i8] c"com/google/android/material/navigation/NavigationView\00", align 16
@.tmr.619 = private unnamed_addr constant [87 x i8] c"com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener\00", align 16
@.tmr.620 = private unnamed_addr constant [103 x i8] c"mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor\00", align 16
@.tmr.621 = private unnamed_addr constant [43 x i8] c"com/google/android/material/tabs/TabLayout\00", align 16
@.tmr.622 = private unnamed_addr constant [51 x i8] c"com/google/android/material/tabs/TabLayout$TabView\00", align 16
@.tmr.623 = private unnamed_addr constant [69 x i8] c"com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener\00", align 16
@.tmr.624 = private unnamed_addr constant [85 x i8] c"mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor\00", align 16
@.tmr.625 = private unnamed_addr constant [65 x i8] c"com/google/android/material/tabs/TabLayout$OnTabSelectedListener\00", align 16
@.tmr.626 = private unnamed_addr constant [47 x i8] c"com/google/android/material/tabs/TabLayout$Tab\00", align 16
@.tmr.627 = private unnamed_addr constant [51 x i8] c"com/google/android/material/tabs/TabLayoutMediator\00", align 16
@.tmr.628 = private unnamed_addr constant [76 x i8] c"com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy\00", align 16
@.tmr.629 = private unnamed_addr constant [67 x i8] c"com/google/android/material/internal/StaticLayoutBuilderConfigurer\00", align 16
@.tmr.630 = private unnamed_addr constant [60 x i8] c"com/google/android/material/internal/ScrimInsetsFrameLayout\00", align 16
@.tmr.631 = private unnamed_addr constant [70 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationItemView\00", align 16
@.tmr.632 = private unnamed_addr constant [70 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationMenuView\00", align 16
@.tmr.633 = private unnamed_addr constant [66 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView\00", align 16
@.tmr.634 = private unnamed_addr constant [101 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener\00", align 16
@.tmr.635 = private unnamed_addr constant [99 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener\00", align 16
@.tmr.636 = private unnamed_addr constant [59 x i8] c"com/google/android/material/appbar/CollapsingToolbarLayout\00", align 16
@.tmr.637 = private unnamed_addr constant [89 x i8] c"com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer\00", align 16
@.tmr.638 = private unnamed_addr constant [48 x i8] c"com/google/android/material/appbar/AppBarLayout\00", align 16
@.tmr.639 = private unnamed_addr constant [61 x i8] c"com/google/android/material/appbar/AppBarLayout$BaseBehavior\00", align 16
@.tmr.640 = private unnamed_addr constant [78 x i8] c"com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback\00", align 16
@.tmr.641 = private unnamed_addr constant [57 x i8] c"com/google/android/material/appbar/AppBarLayout$Behavior\00", align 16
@.tmr.642 = private unnamed_addr constant [66 x i8] c"com/google/android/material/appbar/AppBarLayout$ChildScrollEffect\00", align 16
@.tmr.643 = private unnamed_addr constant [61 x i8] c"com/google/android/material/appbar/AppBarLayout$LayoutParams\00", align 16
@.tmr.644 = private unnamed_addr constant [69 x i8] c"com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener\00", align 16
@.tmr.645 = private unnamed_addr constant [85 x i8] c"mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor\00", align 16
@.tmr.646 = private unnamed_addr constant [72 x i8] c"com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener\00", align 16
@.tmr.647 = private unnamed_addr constant [88 x i8] c"mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor\00", align 16
@.tmr.648 = private unnamed_addr constant [70 x i8] c"com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior\00", align 16
@.tmr.649 = private unnamed_addr constant [50 x i8] c"com/google/android/material/appbar/HeaderBehavior\00", align 16
@.tmr.650 = private unnamed_addr constant [63 x i8] c"com/google/android/material/appbar/HeaderScrollingViewBehavior\00", align 16
@.tmr.651 = private unnamed_addr constant [51 x i8] c"com/google/android/material/appbar/MaterialToolbar\00", align 16
@.tmr.652 = private unnamed_addr constant [54 x i8] c"com/google/android/material/appbar/ViewOffsetBehavior\00", align 16
@.tmr.653 = private unnamed_addr constant [47 x i8] c"androidx/navigation/fragment/FragmentNavigator\00", align 16
@.tmr.654 = private unnamed_addr constant [59 x i8] c"androidx/navigation/fragment/FragmentNavigator$Destination\00", align 16
@.tmr.655 = private unnamed_addr constant [45 x i8] c"androidx/navigation/fragment/NavHostFragment\00", align 16
@.tmr.656 = private unnamed_addr constant [34 x i8] c"androidx/navigation/NavDirections\00", align 16
@.tmr.657 = private unnamed_addr constant [30 x i8] c"androidx/navigation/NavAction\00", align 16
@.tmr.658 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavArgument\00", align 16
@.tmr.659 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavBackStackEntry\00", align 16
@.tmr.660 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavDeepLink\00", align 16
@.tmr.661 = private unnamed_addr constant [39 x i8] c"androidx/navigation/NavDeepLinkRequest\00", align 16
@.tmr.662 = private unnamed_addr constant [35 x i8] c"androidx/navigation/NavDestination\00", align 16
@.tmr.663 = private unnamed_addr constant [49 x i8] c"androidx/navigation/NavDestination$DeepLinkMatch\00", align 16
@.tmr.664 = private unnamed_addr constant [29 x i8] c"androidx/navigation/NavGraph\00", align 16
@.tmr.665 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavGraphNavigator\00", align 16
@.tmr.666 = private unnamed_addr constant [30 x i8] c"androidx/navigation/Navigator\00", align 16
@.tmr.667 = private unnamed_addr constant [37 x i8] c"androidx/navigation/Navigator$Extras\00", align 16
@.tmr.668 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavigatorProvider\00", align 16
@.tmr.669 = private unnamed_addr constant [35 x i8] c"androidx/navigation/NavigatorState\00", align 16
@.tmr.670 = private unnamed_addr constant [31 x i8] c"androidx/navigation/NavOptions\00", align 16
@.tmr.671 = private unnamed_addr constant [28 x i8] c"androidx/navigation/NavType\00", align 16
@.tmr.672 = private unnamed_addr constant [40 x i8] c"androidx/navigation/internal/NavContext\00", align 16
@.tmr.673 = private unnamed_addr constant [54 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout\00", align 16
@.tmr.674 = private unnamed_addr constant [78 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback\00", align 16
@.tmr.675 = private unnamed_addr constant [72 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener\00", align 16
@.tmr.676 = private unnamed_addr constant [88 x i8] c"mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor\00", align 16
@.tmr.677 = private unnamed_addr constant [43 x i8] c"androidx/navigation/ui/AppBarConfiguration\00", align 16
@.tmr.678 = private unnamed_addr constant [51 x i8] c"androidx/navigation/ui/AppBarConfiguration$Builder\00", align 16
@.tmr.679 = private unnamed_addr constant [64 x i8] c"androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener\00", align 16
@.tmr.680 = private unnamed_addr constant [36 x i8] c"androidx/navigation/ui/NavigationUI\00", align 16
@.tmr.681 = private unnamed_addr constant [46 x i8] c"com/google/android/gms/dynamic/IObjectWrapper\00", align 16
@.tmr.682 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/common/ConnectionResult\00", align 16
@.tmr.683 = private unnamed_addr constant [38 x i8] c"com/google/android/gms/common/Feature\00", align 16
@.tmr.684 = private unnamed_addr constant [57 x i8] c"com/google/android/gms/common/GoogleApiAvailabilityLight\00", align 16
@.tmr.685 = private unnamed_addr constant [46 x i8] c"com/google/android/gms/common/util/BiConsumer\00", align 16
@.tmr.686 = private unnamed_addr constant [56 x i8] c"com/google/android/gms/common/internal/IAccountAccessor\00", align 16
@.tmr.687 = private unnamed_addr constant [52 x i8] c"com/google/android/gms/common/internal/ICancelToken\00", align 16
@.tmr.688 = private unnamed_addr constant [73 x i8] c"com/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable\00", align 16
@.tmr.689 = private unnamed_addr constant [41 x i8] c"com/google/android/gms/common/api/Result\00", align 16
@.tmr.690 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/common/api/ResultCallback\00", align 16
@.tmr.691 = private unnamed_addr constant [43 x i8] c"com/google/android/gms/common/api/Response\00", align 16
@.tmr.692 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/common/api/ResultCallbacks\00", align 16
@.tmr.693 = private unnamed_addr constant [40 x i8] c"com/google/android/gms/common/api/Scope\00", align 16
@.tmr.694 = private unnamed_addr constant [41 x i8] c"com/google/android/gms/common/api/Status\00", align 16
@.tmr.695 = private unnamed_addr constant [61 x i8] c"com/google/android/gms/common/api/internal/LifecycleFragment\00", align 16
@.tmr.696 = private unnamed_addr constant [65 x i8] c"com/google/android/gms/common/api/internal/StatusExceptionMapper\00", align 16
@.tmr.697 = private unnamed_addr constant [61 x i8] c"com/google/android/gms/common/api/internal/LifecycleActivity\00", align 16
@.tmr.698 = private unnamed_addr constant [61 x i8] c"com/google/android/gms/common/api/internal/LifecycleCallback\00", align 16
@.tmr.699 = private unnamed_addr constant [43 x i8] c"crc643f2b18b2570eaa5a/PlatformGraphicsView\00", align 16
@.tmr.700 = private unnamed_addr constant [44 x i8] c"androidx/cursoradapter/widget/CursorAdapter\00", align 16
@.tmr.701 = private unnamed_addr constant [39 x i8] c"androidx/lifecycle/ViewModelStoreOwner\00", align 16
@.tmr.702 = private unnamed_addr constant [29 x i8] c"androidx/lifecycle/ViewModel\00", align 16
@.tmr.703 = private unnamed_addr constant [37 x i8] c"androidx/lifecycle/ViewModelProvider\00", align 16
@.tmr.704 = private unnamed_addr constant [55 x i8] c"androidx/lifecycle/ViewModelProvider$Factory$Companion\00", align 16
@.tmr.705 = private unnamed_addr constant [45 x i8] c"androidx/lifecycle/ViewModelProvider$Factory\00", align 16
@.tmr.706 = private unnamed_addr constant [34 x i8] c"androidx/lifecycle/ViewModelStore\00", align 16
@.tmr.707 = private unnamed_addr constant [44 x i8] c"androidx/lifecycle/viewmodel/CreationExtras\00", align 16
@.tmr.708 = private unnamed_addr constant [48 x i8] c"androidx/lifecycle/viewmodel/CreationExtras$Key\00", align 16
@.tmr.709 = private unnamed_addr constant [50 x i8] c"androidx/lifecycle/viewmodel/ViewModelInitializer\00", align 16
@.tmr.710 = private unnamed_addr constant [34 x i8] c"androidx/cardview/widget/CardView\00", align 16
@.tmr.711 = private unnamed_addr constant [48 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderResultCallback\00", align 16
@.tmr.712 = private unnamed_addr constant [42 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderCallback\00", align 16
@.tmr.713 = private unnamed_addr constant [48 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1\00", align 16
@.tmr.714 = private unnamed_addr constant [44 x i8] c"crc6488302ad6e9e4df1a/MauiAppCompatActivity\00", align 16
@.tmr.715 = private unnamed_addr constant [67 x i8] c"crc6488302ad6e9e4df1a/MauiAppCompatActivity_PredictiveBackCallback\00", align 16
@.tmr.716 = private unnamed_addr constant [38 x i8] c"crc6488302ad6e9e4df1a/MauiApplication\00", align 16
@.tmr.717 = private unnamed_addr constant [65 x i8] c"crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks\00", align 16
@.tmr.718 = private unnamed_addr constant [45 x i8] c"com/microsoft/maui/HybridJavaScriptInterface\00", align 16
@.tmr.719 = private unnamed_addr constant [39 x i8] c"com/microsoft/maui/ImageLoaderCallback\00", align 16
@.tmr.720 = private unnamed_addr constant [42 x i8] c"com/microsoft/maui/PlatformShadowDrawable\00", align 16
@.tmr.721 = private unnamed_addr constant [33 x i8] c"com/microsoft/maui/MauiViewGroup\00", align 16
@.tmr.722 = private unnamed_addr constant [45 x i8] c"com/microsoft/maui/PlatformAppCompatTextView\00", align 16
@.tmr.723 = private unnamed_addr constant [44 x i8] c"com/microsoft/maui/PlatformContentViewGroup\00", align 16
@.tmr.724 = private unnamed_addr constant [38 x i8] c"com/microsoft/maui/PlatformDispatcher\00", align 16
@.tmr.725 = private unnamed_addr constant [36 x i8] c"com/microsoft/maui/PlatformFontSpan\00", align 16
@.tmr.726 = private unnamed_addr constant [35 x i8] c"com/microsoft/maui/PlatformInterop\00", align 16
@.tmr.727 = private unnamed_addr constant [42 x i8] c"com/microsoft/maui/PlatformLineHeightSpan\00", align 16
@.tmr.728 = private unnamed_addr constant [34 x i8] c"com/microsoft/maui/PlatformLogger\00", align 16
@.tmr.729 = private unnamed_addr constant [49 x i8] c"com/microsoft/maui/PlatformMauiAppCompatActivity\00", align 16
@.tmr.730 = private unnamed_addr constant [37 x i8] c"com/microsoft/maui/PlatformPaintType\00", align 16
@.tmr.731 = private unnamed_addr constant [37 x i8] c"com/microsoft/maui/PlatformViewGroup\00", align 16
@.tmr.732 = private unnamed_addr constant [39 x i8] c"com/microsoft/maui/PlatformWrapperView\00", align 16
@.tmr.733 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper\00", align 16
@.tmr.734 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/BorderDrawable\00", align 16
@.tmr.735 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/ContainerView\00", align 16
@.tmr.736 = private unnamed_addr constant [39 x i8] c"crc6452ffdc5b34af3a0f/ContentViewGroup\00", align 16
@.tmr.737 = private unnamed_addr constant [58 x i8] c"crc6452ffdc5b34af3a0f/FragmentManagerExtensions_CallBacks\00", align 16
@.tmr.738 = private unnamed_addr constant [38 x i8] c"crc6452ffdc5b34af3a0f/LayoutViewGroup\00", align 16
@.tmr.739 = private unnamed_addr constant [49 x i8] c"crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener\00", align 16
@.tmr.740 = private unnamed_addr constant [54 x i8] c"crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat\00", align 16
@.tmr.741 = private unnamed_addr constant [44 x i8] c"crc6452ffdc5b34af3a0f/MauiAppCompatEditText\00", align 16
@.tmr.742 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiBoxView\00", align 16
@.tmr.743 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiDatePicker\00", align 16
@.tmr.744 = private unnamed_addr constant [40 x i8] c"crc6452ffdc5b34af3a0f/MauiHybridWebView\00", align 16
@.tmr.745 = private unnamed_addr constant [46 x i8] c"crc6452ffdc5b34af3a0f/MauiHybridWebViewClient\00", align 16
@.tmr.746 = private unnamed_addr constant [40 x i8] c"crc6452ffdc5b34af3a0f/MauiLayerDrawable\00", align 16
@.tmr.747 = private unnamed_addr constant [41 x i8] c"crc6452ffdc5b34af3a0f/MauiMaterialButton\00", align 16
@.tmr.748 = private unnamed_addr constant [63 x i8] c"crc6452ffdc5b34af3a0f/MauiMaterialButton_MauiResizableDrawable\00", align 16
@.tmr.749 = private unnamed_addr constant [54 x i8] c"crc6452ffdc5b34af3a0f/MauiMaterialContextThemeWrapper\00", align 16
@.tmr.750 = private unnamed_addr constant [38 x i8] c"crc6452ffdc5b34af3a0f/MauiPageControl\00", align 16
@.tmr.751 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener\00", align 16
@.tmr.752 = private unnamed_addr constant [33 x i8] c"crc6452ffdc5b34af3a0f/MauiPicker\00", align 16
@.tmr.753 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiPickerBase\00", align 16
@.tmr.754 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiScrollView\00", align 16
@.tmr.755 = private unnamed_addr constant [47 x i8] c"crc6452ffdc5b34af3a0f/MauiHorizontalScrollView\00", align 16
@.tmr.756 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiSearchView\00", align 16
@.tmr.757 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/MauiShapeableImageView\00", align 16
@.tmr.758 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/MauiShapeView\00", align 16
@.tmr.759 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiStepper\00", align 16
@.tmr.760 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout\00", align 16
@.tmr.761 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/MauiSwipeView\00", align 16
@.tmr.762 = private unnamed_addr constant [35 x i8] c"crc6452ffdc5b34af3a0f/MauiTextView\00", align 16
@.tmr.763 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiTimePicker\00", align 16
@.tmr.764 = private unnamed_addr constant [42 x i8] c"crc6452ffdc5b34af3a0f/MauiWebChromeClient\00", align 16
@.tmr.765 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiWebView\00", align 16
@.tmr.766 = private unnamed_addr constant [40 x i8] c"crc6452ffdc5b34af3a0f/MauiWebViewClient\00", align 16
@.tmr.767 = private unnamed_addr constant [46 x i8] c"crc6452ffdc5b34af3a0f/MauiWindowInsetListener\00", align 16
@.tmr.768 = private unnamed_addr constant [44 x i8] c"microsoft/maui/platform/MauiNavHostFragment\00", align 16
@.tmr.769 = private unnamed_addr constant [65 x i8] c"crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment\00", align 16
@.tmr.770 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/NavigationViewFragment\00", align 16
@.tmr.771 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/ScopedFragment\00", align 16
@.tmr.772 = private unnamed_addr constant [55 x i8] c"crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks\00", align 16
@.tmr.773 = private unnamed_addr constant [35 x i8] c"crc6452ffdc5b34af3a0f/ViewFragment\00", align 16
@.tmr.774 = private unnamed_addr constant [48 x i8] c"crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView\00", align 16
@.tmr.775 = private unnamed_addr constant [43 x i8] c"crc6452ffdc5b34af3a0f/StepperHandlerHolder\00", align 16
@.tmr.776 = private unnamed_addr constant [60 x i8] c"crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener\00", align 16
@.tmr.777 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/SwipeViewPager\00", align 16
@.tmr.778 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult\00", align 16
@.tmr.779 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/WrapperView\00", align 16
@.tmr.780 = private unnamed_addr constant [56 x i8] c"crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener\00", align 16
@.tmr.781 = private unnamed_addr constant [56 x i8] c"crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener\00", align 16
@.tmr.782 = private unnamed_addr constant [76 x i8] c"crc64fcf28c0e24b4cc31/HybridWebViewHandler_HybridWebViewJavaScriptInterface\00", align 16
@.tmr.783 = private unnamed_addr constant [59 x i8] c"crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener\00", align 16
@.tmr.784 = private unnamed_addr constant [58 x i8] c"crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener\00", align 16
@.tmr.785 = private unnamed_addr constant [58 x i8] c"crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener\00", align 16
@.tmr.786 = private unnamed_addr constant [54 x i8] c"crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick\00", align 16
@.tmr.787 = private unnamed_addr constant [50 x i8] c"crc64b5e713d400f589b7/LinearGradientShaderFactory\00", align 16
@.tmr.788 = private unnamed_addr constant [50 x i8] c"crc64b5e713d400f589b7/RadialGradientShaderFactory\00", align 16
@.tmr.789 = private unnamed_addr constant [35 x i8] c"crc64b5e713d400f589b7/MauiDrawable\00", align 16
@.tmr.790 = private unnamed_addr constant [59 x i8] c"crc64a096dc44ad241142/PlatformTicker_DurationScaleListener\00", align 16
@.tmr.791 = private unnamed_addr constant [34 x i8] c"androidx/activity/BackEventCompat\00", align 16
@.tmr.792 = private unnamed_addr constant [36 x i8] c"androidx/activity/ComponentActivity\00", align 16
@.tmr.793 = private unnamed_addr constant [34 x i8] c"androidx/activity/ComponentDialog\00", align 16
@.tmr.794 = private unnamed_addr constant [37 x i8] c"androidx/activity/FullyDrawnReporter\00", align 16
@.tmr.795 = private unnamed_addr constant [40 x i8] c"androidx/activity/OnBackPressedCallback\00", align 16
@.tmr.796 = private unnamed_addr constant [42 x i8] c"androidx/activity/OnBackPressedDispatcher\00", align 16
@.tmr.797 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultLauncher\00", align 16
@.tmr.798 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultRegistry\00", align 16
@.tmr.799 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultCallback\00", align 16
@.tmr.800 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/PickVisualMediaRequest\00", align 16
@.tmr.801 = private unnamed_addr constant [56 x i8] c"androidx/activity/result/PickVisualMediaRequest$Builder\00", align 16
@.tmr.802 = private unnamed_addr constant [57 x i8] c"androidx/activity/result/contract/ActivityResultContract\00", align 16
@.tmr.803 = private unnamed_addr constant [75 x i8] c"androidx/activity/result/contract/ActivityResultContract$SynchronousResult\00", align 16
@.tmr.804 = private unnamed_addr constant [58 x i8] c"androidx/activity/result/contract/ActivityResultContracts\00", align 16
@.tmr.805 = private unnamed_addr constant [82 x i8] c"androidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia\00", align 16
@.tmr.806 = private unnamed_addr constant [74 x i8] c"androidx/activity/result/contract/ActivityResultContracts$PickVisualMedia\00", align 16
@.tmr.807 = private unnamed_addr constant [85 x i8] c"androidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab\00", align 16
@.tmr.808 = private unnamed_addr constant [84 x i8] c"androidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly\00", align 16
@.tmr.809 = private unnamed_addr constant [84 x i8] c"androidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VideoOnly\00", align 16
@.tmr.810 = private unnamed_addr constant [90 x i8] c"androidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType\00", align 16
@.tmr.811 = private unnamed_addr constant [58 x i8] c"androidx/activity/contextaware/OnContextAvailableListener\00", align 16
@.tmr.812 = private unnamed_addr constant [74 x i8] c"mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor\00", align 16
@.tmr.813 = private unnamed_addr constant [31 x i8] c"androidx/loader/content/Loader\00", align 16
@.tmr.814 = private unnamed_addr constant [54 x i8] c"androidx/loader/content/Loader$OnLoadCanceledListener\00", align 16
@.tmr.815 = private unnamed_addr constant [54 x i8] c"androidx/loader/content/Loader$OnLoadCompleteListener\00", align 16
@.tmr.816 = private unnamed_addr constant [34 x i8] c"androidx/loader/app/LoaderManager\00", align 16
@.tmr.817 = private unnamed_addr constant [50 x i8] c"androidx/loader/app/LoaderManager$LoaderCallbacks\00", align 16
@.tmr.818 = private unnamed_addr constant [28 x i8] c"androidx/lifecycle/Observer\00", align 16
@.tmr.819 = private unnamed_addr constant [28 x i8] c"androidx/lifecycle/LiveData\00", align 16
@.tmr.820 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/MutableLiveData\00", align 16
@.tmr.821 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/location/LocationServices\00", align 16
@.tmr.822 = private unnamed_addr constant [39 x i8] c"crc64e95e69e34d869711/LocationCallback\00", align 16
@.tmr.823 = private unnamed_addr constant [60 x i8] c"com/google/android/gms/location/FusedLocationProviderClient\00", align 16
@.tmr.824 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/location/GeofencingClient\00", align 16
@.tmr.825 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/location/SettingsClient\00", align 16
@.tmr.826 = private unnamed_addr constant [55 x i8] c"com/google/android/gms/location/CurrentLocationRequest\00", align 16
@.tmr.827 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/location/DeviceOrientation\00", align 16
@.tmr.828 = private unnamed_addr constant [57 x i8] c"com/google/android/gms/location/DeviceOrientationRequest\00", align 16
@.tmr.829 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/location/GeofencingRequest\00", align 16
@.tmr.830 = private unnamed_addr constant [58 x i8] c"com/google/android/gms/location/GeofencingRequest$Builder\00", align 16
@.tmr.831 = private unnamed_addr constant [58 x i8] c"com/google/android/gms/location/DeviceOrientationListener\00", align 16
@.tmr.832 = private unnamed_addr constant [57 x i8] c"com/google/android/gms/location/FusedLocationProviderApi\00", align 16
@.tmr.833 = private unnamed_addr constant [63 x i8] c"com/google/android/gms/location/FusedOrientationProviderClient\00", align 16
@.tmr.834 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/location/Geofence$Builder\00", align 16
@.tmr.835 = private unnamed_addr constant [41 x i8] c"com/google/android/gms/location/Geofence\00", align 16
@.tmr.836 = private unnamed_addr constant [46 x i8] c"com/google/android/gms/location/GeofencingApi\00", align 16
@.tmr.837 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/location/LocationListener\00", align 16
@.tmr.838 = private unnamed_addr constant [44 x i8] c"com/google/android/gms/location/SettingsApi\00", align 16
@.tmr.839 = private unnamed_addr constant [52 x i8] c"com/google/android/gms/location/LastLocationRequest\00", align 16
@.tmr.840 = private unnamed_addr constant [53 x i8] c"com/google/android/gms/location/LocationAvailability\00", align 16
@.tmr.841 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/location/LocationCallback\00", align 16
@.tmr.842 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/location/LocationRequest\00", align 16
@.tmr.843 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/location/LocationResult\00", align 16
@.tmr.844 = private unnamed_addr constant [56 x i8] c"com/google/android/gms/location/LocationSettingsRequest\00", align 16
@.tmr.845 = private unnamed_addr constant [57 x i8] c"com/google/android/gms/location/LocationSettingsResponse\00", align 16
@.tmr.846 = private unnamed_addr constant [55 x i8] c"com/google/android/gms/location/LocationSettingsResult\00", align 16
@.tmr.847 = private unnamed_addr constant [55 x i8] c"com/google/android/gms/location/LocationSettingsStates\00", align 16
@.tmr.848 = private unnamed_addr constant [34 x i8] c"androidx/navigation/NavController\00", align 16
@.tmr.849 = private unnamed_addr constant [63 x i8] c"androidx/navigation/NavController$OnDestinationChangedListener\00", align 16
@.tmr.850 = private unnamed_addr constant [79 x i8] c"mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor\00", align 16
@.tmr.851 = private unnamed_addr constant [39 x i8] c"androidx/navigation/NavDeepLinkBuilder\00", align 16
@.tmr.852 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavHostController\00", align 16
@.tmr.853 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavInflater\00", align 16
@.tmr.854 = private unnamed_addr constant [36 x i8] c"androidx/customview/widget/Openable\00", align 16
@.tmr.855 = private unnamed_addr constant [20 x i8] c"[Ljava/lang/Object;\00", align 16
@.tmr.856 = private unnamed_addr constant [3 x i8] c"[Z\00", align 1
@.tmr.857 = private unnamed_addr constant [3 x i8] c"[B\00", align 1
@.tmr.858 = private unnamed_addr constant [3 x i8] c"[C\00", align 1
@.tmr.859 = private unnamed_addr constant [3 x i8] c"[S\00", align 1
@.tmr.860 = private unnamed_addr constant [3 x i8] c"[I\00", align 1
@.tmr.861 = private unnamed_addr constant [3 x i8] c"[J\00", align 1
@.tmr.862 = private unnamed_addr constant [3 x i8] c"[F\00", align 1
@.tmr.863 = private unnamed_addr constant [3 x i8] c"[D\00", align 1
@.tmr.864 = private unnamed_addr constant [37 x i8] c"net/dot/jni/internal/JavaProxyObject\00", align 16
@.tmr.865 = private unnamed_addr constant [40 x i8] c"net/dot/jni/internal/JavaProxyThrowable\00", align 16
@.tmr.866 = private unnamed_addr constant [24 x i8] c"net/dot/jni/ManagedPeer\00", align 16
@.tmr.867 = private unnamed_addr constant [59 x i8] c"crc6468b6408a11370c2f/WebAuthenticatorIntermediateActivity\00", align 16
@.tmr.868 = private unnamed_addr constant [39 x i8] c"microsoft/maui/essentials/fileProvider\00", align 16
@.tmr.869 = private unnamed_addr constant [52 x i8] c"crc64e53d2f592022988e/ConnectivityBroadcastReceiver\00", align 16
@.tmr.870 = private unnamed_addr constant [47 x i8] c"crc64ba438d8f48cf7e75/ActivityResultCallback_1\00", align 16
@.tmr.871 = private unnamed_addr constant [55 x i8] c"crc64ba438d8f48cf7e75/ActivityLifecycleContextListener\00", align 16
@.tmr.872 = private unnamed_addr constant [43 x i8] c"crc64ba438d8f48cf7e75/IntermediateActivity\00", align 16
@.tmr.873 = private unnamed_addr constant [59 x i8] c"crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener\00", align 16
@.tmr.874 = private unnamed_addr constant [47 x i8] c"crc640a8d9a12ddbf2cf2/BatteryBroadcastReceiver\00", align 16
@.tmr.875 = private unnamed_addr constant [51 x i8] c"crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver\00", align 16
@.tmr.876 = private unnamed_addr constant [55 x i8] c"crc64f728827fec74e9c3/TapWindowTracker_GestureListener\00", align 16
@.tmr.877 = private unnamed_addr constant [40 x i8] c"crc64f728827fec74e9c3/Toolbar_Container\00", align 16
@.tmr.878 = private unnamed_addr constant [48 x i8] c"crc64338477404e88479c/ColorChangeRevealDrawable\00", align 16
@.tmr.879 = private unnamed_addr constant [52 x i8] c"crc64338477404e88479c/ControlsAccessibilityDelegate\00", align 16
@.tmr.880 = private unnamed_addr constant [48 x i8] c"crc64338477404e88479c/DragAndDropGestureHandler\00", align 16
@.tmr.881 = private unnamed_addr constant [69 x i8] c"crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData\00", align 16
@.tmr.882 = private unnamed_addr constant [66 x i8] c"crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView\00", align 16
@.tmr.883 = private unnamed_addr constant [40 x i8] c"crc64338477404e88479c/FragmentContainer\00", align 16
@.tmr.884 = private unnamed_addr constant [46 x i8] c"crc64338477404e88479c/GenericAnimatorListener\00", align 16
@.tmr.885 = private unnamed_addr constant [50 x i8] c"crc64338477404e88479c/GenericGlobalLayoutListener\00", align 16
@.tmr.886 = private unnamed_addr constant [47 x i8] c"crc64338477404e88479c/GenericMenuClickListener\00", align 16
@.tmr.887 = private unnamed_addr constant [45 x i8] c"crc64338477404e88479c/GradientStrokeDrawable\00", align 16
@.tmr.888 = private unnamed_addr constant [43 x i8] c"crc64338477404e88479c/InnerGestureListener\00", align 16
@.tmr.889 = private unnamed_addr constant [41 x i8] c"crc64338477404e88479c/InnerScaleListener\00", align 16
@.tmr.890 = private unnamed_addr constant [36 x i8] c"crc64338477404e88479c/MauiViewPager\00", align 16
@.tmr.891 = private unnamed_addr constant [54 x i8] c"crc64338477404e88479c/MultiPageFragmentStateAdapter_1\00", align 16
@.tmr.892 = private unnamed_addr constant [44 x i8] c"crc64338477404e88479c/PointerGestureHandler\00", align 16
@.tmr.893 = private unnamed_addr constant [47 x i8] c"crc64338477404e88479c/TapAndPanGestureDetector\00", align 16
@.tmr.894 = private unnamed_addr constant [59 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalFragment\00", align 16
@.tmr.895 = private unnamed_addr constant [81 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalFragment_CustomComponentDialog\00", align 16
@.tmr.896 = private unnamed_addr constant [90 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalFragment_CustomComponentDialog_CallBack\00", align 16
@.tmr.897 = private unnamed_addr constant [36 x i8] c"crc640ec207abc449b2ca/ContainerView\00", align 16
@.tmr.898 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/CustomFrameLayout\00", align 16
@.tmr.899 = private unnamed_addr constant [43 x i8] c"crc640ec207abc449b2ca/ShellContentFragment\00", align 16
@.tmr.900 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/ShellFlyoutLayout\00", align 16
@.tmr.901 = private unnamed_addr constant [49 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter\00", align 16
@.tmr.902 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout\00", align 16
@.tmr.903 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder\00", align 16
@.tmr.904 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRenderer\00", align 16
@.tmr.905 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer\00", align 16
@.tmr.906 = private unnamed_addr constant [74 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_WindowsListener\00", align 16
@.tmr.907 = private unnamed_addr constant [74 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer\00", align 16
@.tmr.908 = private unnamed_addr constant [44 x i8] c"crc640ec207abc449b2ca/RecyclerViewContainer\00", align 16
@.tmr.909 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ScrollLayoutManager\00", align 16
@.tmr.910 = private unnamed_addr constant [45 x i8] c"crc640ec207abc449b2ca/ShellFragmentContainer\00", align 16
@.tmr.911 = private unnamed_addr constant [48 x i8] c"crc640ec207abc449b2ca/ShellFragmentStateAdapter\00", align 16
@.tmr.912 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/ShellItemRenderer\00", align 16
@.tmr.913 = private unnamed_addr constant [44 x i8] c"crc640ec207abc449b2ca/ShellItemRendererBase\00", align 16
@.tmr.914 = private unnamed_addr constant [41 x i8] c"crc640ec207abc449b2ca/ShellPageContainer\00", align 16
@.tmr.915 = private unnamed_addr constant [38 x i8] c"crc640ec207abc449b2ca/ShellSearchView\00", align 16
@.tmr.916 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper\00", align 16
@.tmr.917 = private unnamed_addr constant [45 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter\00", align 16
@.tmr.918 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter\00", align 16
@.tmr.919 = private unnamed_addr constant [59 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper\00", align 16
@.tmr.920 = private unnamed_addr constant [43 x i8] c"crc640ec207abc449b2ca/ShellSectionRenderer\00", align 16
@.tmr.921 = private unnamed_addr constant [64 x i8] c"crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged\00", align 16
@.tmr.922 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ShellToolbarTracker\00", align 16
@.tmr.923 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable\00", align 16
@.tmr.924 = private unnamed_addr constant [49 x i8] c"crc649ff77a65592e7d55/TabbedPageManager_TempView\00", align 16
@.tmr.925 = private unnamed_addr constant [50 x i8] c"crc649ff77a65592e7d55/TabbedPageManager_Listeners\00", align 16
@.tmr.926 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/CarouselViewAdapter_2\00", align 16
@.tmr.927 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/EmptyViewAdapter\00", align 16
@.tmr.928 = private unnamed_addr constant [50 x i8] c"crc645d80431ce5f73f11/GroupableItemsViewAdapter_2\00", align 16
@.tmr.929 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/ItemsViewAdapter_2\00", align 16
@.tmr.930 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2\00", align 16
@.tmr.931 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/SelectableItemsViewAdapter_2\00", align 16
@.tmr.932 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/StructuredItemsViewAdapter_2\00", align 16
@.tmr.933 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/CarouselSpacingItemDecoration\00", align 16
@.tmr.934 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/CarouselViewOnScrollListener\00", align 16
@.tmr.935 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/DataChangeObserver\00", align 16
@.tmr.936 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/GridLayoutSpanSizeLookup\00", align 16
@.tmr.937 = private unnamed_addr constant [38 x i8] c"crc645d80431ce5f73f11/ItemContentView\00", align 16
@.tmr.938 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/MauiCarouselRecyclerView\00", align 16
@.tmr.939 = private unnamed_addr constant [82 x i8] c"crc645d80431ce5f73f11/MauiCarouselRecyclerView_CarouselViewOnGlobalLayoutListener\00", align 16
@.tmr.940 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/MauiRecyclerView_3\00", align 16
@.tmr.941 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/PositionalSmoothScroller\00", align 16
@.tmr.942 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/RecyclerViewScrollListener_2\00", align 16
@.tmr.943 = private unnamed_addr constant [35 x i8] c"crc645d80431ce5f73f11/ScrollHelper\00", align 16
@.tmr.944 = private unnamed_addr constant [43 x i8] c"crc645d80431ce5f73f11/SelectableViewHolder\00", align 16
@.tmr.945 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/SimpleItemTouchHelperCallback\00", align 16
@.tmr.946 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/SimpleViewHolder\00", align 16
@.tmr.947 = private unnamed_addr constant [43 x i8] c"crc645d80431ce5f73f11/SizedItemContentView\00", align 16
@.tmr.948 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/CenterSnapHelper\00", align 16
@.tmr.949 = private unnamed_addr constant [37 x i8] c"crc645d80431ce5f73f11/EdgeSnapHelper\00", align 16
@.tmr.950 = private unnamed_addr constant [42 x i8] c"crc645d80431ce5f73f11/EndSingleSnapHelper\00", align 16
@.tmr.951 = private unnamed_addr constant [36 x i8] c"crc645d80431ce5f73f11/EndSnapHelper\00", align 16
@.tmr.952 = private unnamed_addr constant [42 x i8] c"crc645d80431ce5f73f11/NongreedySnapHelper\00", align 16
@.tmr.953 = private unnamed_addr constant [64 x i8] c"crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener\00", align 16
@.tmr.954 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/SingleSnapHelper\00", align 16
@.tmr.955 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/StartSingleSnapHelper\00", align 16
@.tmr.956 = private unnamed_addr constant [38 x i8] c"crc645d80431ce5f73f11/StartSnapHelper\00", align 16
@.tmr.957 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/SpacingItemDecoration\00", align 16
@.tmr.958 = private unnamed_addr constant [46 x i8] c"crc645d80431ce5f73f11/TemplatedItemViewHolder\00", align 16
@.tmr.959 = private unnamed_addr constant [37 x i8] c"crc645d80431ce5f73f11/TextViewHolder\00", align 16
@.tmr.960 = private unnamed_addr constant [36 x i8] c"crc64e1fb321c08285b90/FrameRenderer\00", align 16
@.tmr.961 = private unnamed_addr constant [35 x i8] c"crc64e1fb321c08285b90/ViewRenderer\00", align 16
@.tmr.962 = private unnamed_addr constant [37 x i8] c"crc64e1fb321c08285b90/ViewRenderer_2\00", align 16
@.tmr.963 = private unnamed_addr constant [46 x i8] c"crc64e1fb321c08285b90/VisualElementRenderer_1\00", align 16
@.tmr.964 = private unnamed_addr constant [35 x i8] c"crc64e1fb321c08285b90/BaseCellView\00", align 16
@.tmr.965 = private unnamed_addr constant [34 x i8] c"crc64e1fb321c08285b90/CellAdapter\00", align 16
@.tmr.966 = private unnamed_addr constant [50 x i8] c"crc64e1fb321c08285b90/CellRenderer_RendererHolder\00", align 16
@.tmr.967 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/ConditionalFocusLayout\00", align 16
@.tmr.968 = private unnamed_addr constant [40 x i8] c"crc64e1fb321c08285b90/EntryCellEditText\00", align 16
@.tmr.969 = private unnamed_addr constant [36 x i8] c"crc64e1fb321c08285b90/EntryCellView\00", align 16
@.tmr.970 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/GroupedListViewAdapter\00", align 16
@.tmr.971 = private unnamed_addr constant [38 x i8] c"crc64e1fb321c08285b90/ListViewAdapter\00", align 16
@.tmr.972 = private unnamed_addr constant [39 x i8] c"crc64e1fb321c08285b90/ListViewRenderer\00", align 16
@.tmr.973 = private unnamed_addr constant [49 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_Container\00", align 16
@.tmr.974 = private unnamed_addr constant [82 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling\00", align 16
@.tmr.975 = private unnamed_addr constant [74 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener\00", align 16
@.tmr.976 = private unnamed_addr constant [62 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector\00", align 16
@.tmr.977 = private unnamed_addr constant [37 x i8] c"crc64e1fb321c08285b90/SwitchCellView\00", align 16
@.tmr.978 = private unnamed_addr constant [52 x i8] c"crc64e1fb321c08285b90/TextCellRenderer_TextCellView\00", align 16
@.tmr.979 = private unnamed_addr constant [57 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer\00", align 16
@.tmr.980 = private unnamed_addr constant [76 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener\00", align 16
@.tmr.981 = private unnamed_addr constant [82 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener\00", align 16
@.tmr.982 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/TableViewModelRenderer\00", align 16
@.tmr.983 = private unnamed_addr constant [40 x i8] c"crc64e1fb321c08285b90/TableViewRenderer\00", align 16
@.tmr.984 = private unnamed_addr constant [57 x i8] c"androidx/appcompat/graphics/drawable/DrawerArrowDrawable\00", align 16
@.tmr.985 = private unnamed_addr constant [34 x i8] c"androidx/appcompat/widget/Toolbar\00", align 16
@.tmr.986 = private unnamed_addr constant [67 x i8] c"androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher\00", align 16
@.tmr.987 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/Toolbar$LayoutParams\00", align 16
@.tmr.988 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/Toolbar$OnMenuItemClickListener\00", align 16
@.tmr.989 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor\00", align 16
@.tmr.990 = private unnamed_addr constant [56 x i8] c"androidx/appcompat/widget/AppCompatAutoCompleteTextView\00", align 16
@.tmr.991 = private unnamed_addr constant [42 x i8] c"androidx/appcompat/widget/AppCompatButton\00", align 16
@.tmr.992 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatCheckBox\00", align 16
@.tmr.993 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatEditText\00", align 16
@.tmr.994 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/AppCompatImageButton\00", align 16
@.tmr.995 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/widget/AppCompatImageView\00", align 16
@.tmr.996 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/AppCompatRadioButton\00", align 16
@.tmr.997 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatTextView\00", align 16
@.tmr.998 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/widget/DecorToolbar\00", align 16
@.tmr.999 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/widget/LinearLayoutCompat\00", align 16
@.tmr.1000 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/LinearLayoutCompat$LayoutParams\00", align 16
@.tmr.1001 = private unnamed_addr constant [52 x i8] c"androidx/appcompat/widget/ScrollingTabContainerView\00", align 16
@.tmr.1002 = private unnamed_addr constant [75 x i8] c"androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener\00", align 16
@.tmr.1003 = private unnamed_addr constant [37 x i8] c"androidx/appcompat/widget/SearchView\00", align 16
@.tmr.1004 = private unnamed_addr constant [53 x i8] c"androidx/appcompat/widget/SearchView$OnCloseListener\00", align 16
@.tmr.1005 = private unnamed_addr constant [69 x i8] c"mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor\00", align 16
@.tmr.1006 = private unnamed_addr constant [57 x i8] c"androidx/appcompat/widget/SearchView$OnQueryTextListener\00", align 16
@.tmr.1007 = private unnamed_addr constant [73 x i8] c"mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor\00", align 16
@.tmr.1008 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/SearchView$OnSuggestionListener\00", align 16
@.tmr.1009 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor\00", align 16
@.tmr.1010 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/widget/SwitchCompat\00", align 16
@.tmr.1011 = private unnamed_addr constant [40 x i8] c"androidx/appcompat/widget/TooltipCompat\00", align 16
@.tmr.1012 = private unnamed_addr constant [35 x i8] c"androidx/appcompat/app/AlertDialog\00", align 16
@.tmr.1013 = private unnamed_addr constant [43 x i8] c"androidx/appcompat/app/AlertDialog$Builder\00", align 16
@.tmr.1014 = private unnamed_addr constant [78 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor\00", align 16
@.tmr.1015 = private unnamed_addr constant [79 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor\00", align 16
@.tmr.1016 = private unnamed_addr constant [89 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor\00", align 16
@.tmr.1017 = private unnamed_addr constant [33 x i8] c"androidx/appcompat/app/ActionBar\00", align 16
@.tmr.1018 = private unnamed_addr constant [46 x i8] c"androidx/appcompat/app/ActionBar$LayoutParams\00", align 16
@.tmr.1019 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/app/ActionBar$OnMenuVisibilityListener\00", align 16
@.tmr.1020 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor\00", align 16
@.tmr.1021 = private unnamed_addr constant [54 x i8] c"androidx/appcompat/app/ActionBar$OnNavigationListener\00", align 16
@.tmr.1022 = private unnamed_addr constant [37 x i8] c"androidx/appcompat/app/ActionBar$Tab\00", align 16
@.tmr.1023 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/app/ActionBar$TabListener\00", align 16
@.tmr.1024 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/app/ActionBarDrawerToggle\00", align 16
@.tmr.1025 = private unnamed_addr constant [54 x i8] c"androidx/appcompat/app/ActionBarDrawerToggle$Delegate\00", align 16
@.tmr.1026 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatActivity\00", align 16
@.tmr.1027 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatDelegate\00", align 16
@.tmr.1028 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/app/AppCompatDialog\00", align 16
@.tmr.1029 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatCallback\00", align 16
@.tmr.1030 = private unnamed_addr constant [35 x i8] c"androidx/appcompat/view/ActionMode\00", align 16
@.tmr.1031 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/view/ActionMode$Callback\00", align 16
@.tmr.1032 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/view/menu/MenuBuilder\00", align 16
@.tmr.1033 = private unnamed_addr constant [50 x i8] c"androidx/appcompat/view/menu/MenuBuilder$Callback\00", align 16
@.tmr.1034 = private unnamed_addr constant [52 x i8] c"androidx/appcompat/view/menu/MenuPresenter$Callback\00", align 16
@.tmr.1035 = private unnamed_addr constant [43 x i8] c"androidx/appcompat/view/menu/MenuPresenter\00", align 16
@.tmr.1036 = private unnamed_addr constant [38 x i8] c"androidx/appcompat/view/menu/MenuView\00", align 16
@.tmr.1037 = private unnamed_addr constant [42 x i8] c"androidx/appcompat/view/menu/MenuItemImpl\00", align 16
@.tmr.1038 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/view/menu/SubMenuBuilder\00", align 16
@.tmr.1039 = private unnamed_addr constant [39 x i8] c"androidx/viewpager/widget/PagerAdapter\00", align 16
@.tmr.1040 = private unnamed_addr constant [36 x i8] c"androidx/viewpager/widget/ViewPager\00", align 16
@.tmr.1041 = private unnamed_addr constant [60 x i8] c"androidx/viewpager/widget/ViewPager$OnAdapterChangeListener\00", align 16
@.tmr.1042 = private unnamed_addr constant [76 x i8] c"mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor\00", align 16
@.tmr.1043 = private unnamed_addr constant [57 x i8] c"androidx/viewpager/widget/ViewPager$OnPageChangeListener\00", align 16
@.tmr.1044 = private unnamed_addr constant [73 x i8] c"mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor\00", align 16
@.tmr.1045 = private unnamed_addr constant [52 x i8] c"androidx/viewpager/widget/ViewPager$PageTransformer\00", align 16
@.tmr.1046 = private unnamed_addr constant [52 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout\00", align 16
@.tmr.1047 = private unnamed_addr constant [61 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior\00", align 16
@.tmr.1048 = private unnamed_addr constant [65 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams\00", align 16
@.tmr.1049 = private unnamed_addr constant [29 x i8] c"androidx/lifecycle/Lifecycle\00", align 16
@.tmr.1050 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/Lifecycle$Event\00", align 16
@.tmr.1051 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/Lifecycle$State\00", align 16
@.tmr.1052 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/AtomicReference\00", align 16
@.tmr.1053 = private unnamed_addr constant [37 x i8] c"androidx/lifecycle/LifecycleObserver\00", align 16
@.tmr.1054 = private unnamed_addr constant [34 x i8] c"androidx/lifecycle/LifecycleOwner\00", align 16
@.tmr.1055 = private unnamed_addr constant [41 x i8] c"crc64a5df8ade113ad624/MapCallbackHandler\00", align 16
@.tmr.1056 = private unnamed_addr constant [34 x i8] c"kotlinx/coroutines/CoroutineScope\00", align 16
@.tmr.1057 = private unnamed_addr constant [29 x i8] c"kotlinx/coroutines/flow/Flow\00", align 16
@.tmr.1058 = private unnamed_addr constant [38 x i8] c"kotlinx/coroutines/flow/FlowCollector\00", align 16
@.tmr.1059 = private unnamed_addr constant [42 x i8] c"kotlinx/coroutines/flow/MutableSharedFlow\00", align 16
@.tmr.1060 = private unnamed_addr constant [41 x i8] c"kotlinx/coroutines/flow/MutableStateFlow\00", align 16
@.tmr.1061 = private unnamed_addr constant [35 x i8] c"kotlinx/coroutines/flow/SharedFlow\00", align 16
@.tmr.1062 = private unnamed_addr constant [34 x i8] c"kotlinx/coroutines/flow/StateFlow\00", align 16
@.tmr.1063 = private unnamed_addr constant [46 x i8] c"kotlinx/serialization/DeserializationStrategy\00", align 16
@.tmr.1064 = private unnamed_addr constant [34 x i8] c"kotlinx/serialization/KSerializer\00", align 16
@.tmr.1065 = private unnamed_addr constant [44 x i8] c"kotlinx/serialization/SerializationStrategy\00", align 16
@.tmr.1066 = private unnamed_addr constant [58 x i8] c"kotlinx/serialization/encoding/CompositeDecoder$Companion\00", align 16
@.tmr.1067 = private unnamed_addr constant [48 x i8] c"kotlinx/serialization/encoding/CompositeDecoder\00", align 16
@.tmr.1068 = private unnamed_addr constant [48 x i8] c"kotlinx/serialization/encoding/CompositeEncoder\00", align 16
@.tmr.1069 = private unnamed_addr constant [39 x i8] c"kotlinx/serialization/encoding/Decoder\00", align 16
@.tmr.1070 = private unnamed_addr constant [39 x i8] c"kotlinx/serialization/encoding/Encoder\00", align 16
@.tmr.1071 = private unnamed_addr constant [51 x i8] c"kotlinx/serialization/descriptors/SerialDescriptor\00", align 16
@.tmr.1072 = private unnamed_addr constant [45 x i8] c"kotlinx/serialization/descriptors/SerialKind\00", align 16
@.tmr.1073 = private unnamed_addr constant [66 x i8] c"com/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate\00", align 16
@.tmr.1074 = private unnamed_addr constant [41 x i8] c"com/google/android/gms/maps/CameraUpdate\00", align 16
@.tmr.1075 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/maps/CameraUpdateFactory\00", align 16
@.tmr.1076 = private unnamed_addr constant [38 x i8] c"com/google/android/gms/maps/GoogleMap\00", align 16
@.tmr.1077 = private unnamed_addr constant [57 x i8] c"com/google/android/gms/maps/GoogleMap$CancelableCallback\00", align 16
@.tmr.1078 = private unnamed_addr constant [56 x i8] c"com/google/android/gms/maps/GoogleMap$InfoWindowAdapter\00", align 16
@.tmr.1079 = private unnamed_addr constant [61 x i8] c"com/google/android/gms/maps/GoogleMap$OnCameraChangeListener\00", align 16
@.tmr.1080 = private unnamed_addr constant [77 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnCameraChangeListenerImplementor\00", align 16
@.tmr.1081 = private unnamed_addr constant [59 x i8] c"com/google/android/gms/maps/GoogleMap$OnCameraIdleListener\00", align 16
@.tmr.1082 = private unnamed_addr constant [75 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnCameraIdleListenerImplementor\00", align 16
@.tmr.1083 = private unnamed_addr constant [67 x i8] c"com/google/android/gms/maps/GoogleMap$OnCameraMoveCanceledListener\00", align 16
@.tmr.1084 = private unnamed_addr constant [83 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnCameraMoveCanceledListenerImplementor\00", align 16
@.tmr.1085 = private unnamed_addr constant [59 x i8] c"com/google/android/gms/maps/GoogleMap$OnCameraMoveListener\00", align 16
@.tmr.1086 = private unnamed_addr constant [75 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnCameraMoveListenerImplementor\00", align 16
@.tmr.1087 = private unnamed_addr constant [66 x i8] c"com/google/android/gms/maps/GoogleMap$OnCameraMoveStartedListener\00", align 16
@.tmr.1088 = private unnamed_addr constant [82 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnCameraMoveStartedListenerImplementor\00", align 16
@.tmr.1089 = private unnamed_addr constant [60 x i8] c"com/google/android/gms/maps/GoogleMap$OnCircleClickListener\00", align 16
@.tmr.1090 = private unnamed_addr constant [76 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnCircleClickListenerImplementor\00", align 16
@.tmr.1091 = private unnamed_addr constant [67 x i8] c"com/google/android/gms/maps/GoogleMap$OnGroundOverlayClickListener\00", align 16
@.tmr.1092 = private unnamed_addr constant [83 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnGroundOverlayClickListenerImplementor\00", align 16
@.tmr.1093 = private unnamed_addr constant [66 x i8] c"com/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener\00", align 16
@.tmr.1094 = private unnamed_addr constant [82 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnIndoorStateChangeListenerImplementor\00", align 16
@.tmr.1095 = private unnamed_addr constant [64 x i8] c"com/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener\00", align 16
@.tmr.1096 = private unnamed_addr constant [80 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnInfoWindowClickListenerImplementor\00", align 16
@.tmr.1097 = private unnamed_addr constant [64 x i8] c"com/google/android/gms/maps/GoogleMap$OnInfoWindowCloseListener\00", align 16
@.tmr.1098 = private unnamed_addr constant [80 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnInfoWindowCloseListenerImplementor\00", align 16
@.tmr.1099 = private unnamed_addr constant [68 x i8] c"com/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener\00", align 16
@.tmr.1100 = private unnamed_addr constant [84 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnInfoWindowLongClickListenerImplementor\00", align 16
@.tmr.1101 = private unnamed_addr constant [71 x i8] c"com/google/android/gms/maps/GoogleMap$OnMapCapabilitiesChangedListener\00", align 16
@.tmr.1102 = private unnamed_addr constant [87 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnMapCapabilitiesChangedListenerImplementor\00", align 16
@.tmr.1103 = private unnamed_addr constant [57 x i8] c"com/google/android/gms/maps/GoogleMap$OnMapClickListener\00", align 16
@.tmr.1104 = private unnamed_addr constant [73 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnMapClickListenerImplementor\00", align 16
@.tmr.1105 = private unnamed_addr constant [58 x i8] c"com/google/android/gms/maps/GoogleMap$OnMapLoadedCallback\00", align 16
@.tmr.1106 = private unnamed_addr constant [61 x i8] c"com/google/android/gms/maps/GoogleMap$OnMapLongClickListener\00", align 16
@.tmr.1107 = private unnamed_addr constant [77 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnMapLongClickListenerImplementor\00", align 16
@.tmr.1108 = private unnamed_addr constant [60 x i8] c"com/google/android/gms/maps/GoogleMap$OnMarkerClickListener\00", align 16
@.tmr.1109 = private unnamed_addr constant [76 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnMarkerClickListenerImplementor\00", align 16
@.tmr.1110 = private unnamed_addr constant [59 x i8] c"com/google/android/gms/maps/GoogleMap$OnMarkerDragListener\00", align 16
@.tmr.1111 = private unnamed_addr constant [75 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnMarkerDragListenerImplementor\00", align 16
@.tmr.1112 = private unnamed_addr constant [70 x i8] c"com/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener\00", align 16
@.tmr.1113 = private unnamed_addr constant [86 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnMyLocationButtonClickListenerImplementor\00", align 16
@.tmr.1114 = private unnamed_addr constant [65 x i8] c"com/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener\00", align 16
@.tmr.1115 = private unnamed_addr constant [81 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnMyLocationChangeListenerImplementor\00", align 16
@.tmr.1116 = private unnamed_addr constant [64 x i8] c"com/google/android/gms/maps/GoogleMap$OnMyLocationClickListener\00", align 16
@.tmr.1117 = private unnamed_addr constant [80 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnMyLocationClickListenerImplementor\00", align 16
@.tmr.1118 = private unnamed_addr constant [57 x i8] c"com/google/android/gms/maps/GoogleMap$OnPoiClickListener\00", align 16
@.tmr.1119 = private unnamed_addr constant [73 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnPoiClickListenerImplementor\00", align 16
@.tmr.1120 = private unnamed_addr constant [61 x i8] c"com/google/android/gms/maps/GoogleMap$OnPolygonClickListener\00", align 16
@.tmr.1121 = private unnamed_addr constant [77 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnPolygonClickListenerImplementor\00", align 16
@.tmr.1122 = private unnamed_addr constant [62 x i8] c"com/google/android/gms/maps/GoogleMap$OnPolylineClickListener\00", align 16
@.tmr.1123 = private unnamed_addr constant [78 x i8] c"mono/com/google/android/gms/maps/GoogleMap_OnPolylineClickListenerImplementor\00", align 16
@.tmr.1124 = private unnamed_addr constant [60 x i8] c"com/google/android/gms/maps/GoogleMap$SnapshotReadyCallback\00", align 16
@.tmr.1125 = private unnamed_addr constant [45 x i8] c"com/google/android/gms/maps/GoogleMapOptions\00", align 16
@.tmr.1126 = private unnamed_addr constant [69 x i8] c"com/google/android/gms/maps/LocationSource$OnLocationChangedListener\00", align 16
@.tmr.1127 = private unnamed_addr constant [43 x i8] c"com/google/android/gms/maps/LocationSource\00", align 16
@.tmr.1128 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/maps/OnMapReadyCallback\00", align 16
@.tmr.1129 = private unnamed_addr constant [57 x i8] c"com/google/android/gms/maps/OnMapsSdkInitializedCallback\00", align 16
@.tmr.1130 = private unnamed_addr constant [44 x i8] c"com/google/android/gms/maps/MapsInitializer\00", align 16
@.tmr.1131 = private unnamed_addr constant [53 x i8] c"com/google/android/gms/maps/MapsInitializer$Renderer\00", align 16
@.tmr.1132 = private unnamed_addr constant [36 x i8] c"com/google/android/gms/maps/MapView\00", align 16
@.tmr.1133 = private unnamed_addr constant [39 x i8] c"com/google/android/gms/maps/Projection\00", align 16
@.tmr.1134 = private unnamed_addr constant [39 x i8] c"com/google/android/gms/maps/UiSettings\00", align 16
@.tmr.1135 = private unnamed_addr constant [42 x i8] c"com/google/android/gms/maps/model/Polygon\00", align 16
@.tmr.1136 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/maps/model/MarkerOptions\00", align 16
@.tmr.1137 = private unnamed_addr constant [51 x i8] c"com/google/android/gms/maps/model/BitmapDescriptor\00", align 16
@.tmr.1138 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/maps/model/CameraPosition\00", align 16
@.tmr.1139 = private unnamed_addr constant [57 x i8] c"com/google/android/gms/maps/model/CameraPosition$Builder\00", align 16
@.tmr.1140 = private unnamed_addr constant [38 x i8] c"com/google/android/gms/maps/model/Cap\00", align 16
@.tmr.1141 = private unnamed_addr constant [41 x i8] c"com/google/android/gms/maps/model/Circle\00", align 16
@.tmr.1142 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/maps/model/CircleOptions\00", align 16
@.tmr.1143 = private unnamed_addr constant [42 x i8] c"com/google/android/gms/maps/model/Feature\00", align 16
@.tmr.1144 = private unnamed_addr constant [52 x i8] c"com/google/android/gms/maps/model/FeatureClickEvent\00", align 16
@.tmr.1145 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/maps/model/FeatureLayer\00", align 16
@.tmr.1146 = private unnamed_addr constant [70 x i8] c"com/google/android/gms/maps/model/FeatureLayer$OnFeatureClickListener\00", align 16
@.tmr.1147 = private unnamed_addr constant [86 x i8] c"mono/com/google/android/gms/maps/model/FeatureLayer_OnFeatureClickListenerImplementor\00", align 16
@.tmr.1148 = private unnamed_addr constant [60 x i8] c"com/google/android/gms/maps/model/FeatureLayer$StyleFactory\00", align 16
@.tmr.1149 = private unnamed_addr constant [54 x i8] c"com/google/android/gms/maps/model/FeatureLayerOptions\00", align 16
@.tmr.1150 = private unnamed_addr constant [62 x i8] c"com/google/android/gms/maps/model/FeatureLayerOptions$Builder\00", align 16
@.tmr.1151 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/maps/model/FeatureStyle\00", align 16
@.tmr.1152 = private unnamed_addr constant [55 x i8] c"com/google/android/gms/maps/model/FeatureStyle$Builder\00", align 16
@.tmr.1153 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/maps/model/GroundOverlay\00", align 16
@.tmr.1154 = private unnamed_addr constant [55 x i8] c"com/google/android/gms/maps/model/GroundOverlayOptions\00", align 16
@.tmr.1155 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/maps/model/IndoorBuilding\00", align 16
@.tmr.1156 = private unnamed_addr constant [46 x i8] c"com/google/android/gms/maps/model/IndoorLevel\00", align 16
@.tmr.1157 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/maps/model/TileProvider\00", align 16
@.tmr.1158 = private unnamed_addr constant [41 x i8] c"com/google/android/gms/maps/model/LatLng\00", align 16
@.tmr.1159 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/maps/model/LatLngBounds\00", align 16
@.tmr.1160 = private unnamed_addr constant [55 x i8] c"com/google/android/gms/maps/model/LatLngBounds$Builder\00", align 16
@.tmr.1161 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/maps/model/MapCapabilities\00", align 16
@.tmr.1162 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/maps/model/MapStyleOptions\00", align 16
@.tmr.1163 = private unnamed_addr constant [41 x i8] c"com/google/android/gms/maps/model/Marker\00", align 16
@.tmr.1164 = private unnamed_addr constant [46 x i8] c"com/google/android/gms/maps/model/PatternItem\00", align 16
@.tmr.1165 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/maps/model/PointOfInterest\00", align 16
@.tmr.1166 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/maps/model/PolygonOptions\00", align 16
@.tmr.1167 = private unnamed_addr constant [43 x i8] c"com/google/android/gms/maps/model/Polyline\00", align 16
@.tmr.1168 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/maps/model/PolylineOptions\00", align 16
@.tmr.1169 = private unnamed_addr constant [45 x i8] c"com/google/android/gms/maps/model/StampStyle\00", align 16
@.tmr.1170 = private unnamed_addr constant [46 x i8] c"com/google/android/gms/maps/model/StrokeStyle\00", align 16
@.tmr.1171 = private unnamed_addr constant [54 x i8] c"com/google/android/gms/maps/model/StrokeStyle$Builder\00", align 16
@.tmr.1172 = private unnamed_addr constant [44 x i8] c"com/google/android/gms/maps/model/StyleSpan\00", align 16
@.tmr.1173 = private unnamed_addr constant [39 x i8] c"com/google/android/gms/maps/model/Tile\00", align 16
@.tmr.1174 = private unnamed_addr constant [46 x i8] c"com/google/android/gms/maps/model/TileOverlay\00", align 16
@.tmr.1175 = private unnamed_addr constant [53 x i8] c"com/google/android/gms/maps/model/TileOverlayOptions\00", align 16
@.tmr.1176 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/maps/model/VisibleRegion\00", align 16
@.tmr.1177 = private unnamed_addr constant [35 x i8] c"crc642146c9879e6033f2/MainActivity\00", align 16
@.tmr.1178 = private unnamed_addr constant [38 x i8] c"crc642146c9879e6033f2/MainApplication\00", align 16
@.tmr.1179 = private unnamed_addr constant [36 x i8] c"androidx/lifecycle/SavedStateHandle\00", align 16
@.tmr.1180 = private unnamed_addr constant [47 x i8] c"androidx/recyclerview/widget/GridLayoutManager\00", align 16
@.tmr.1181 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup\00", align 16
@.tmr.1182 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/ItemTouchUIUtil\00", align 16
@.tmr.1183 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/ItemTouchHelper\00", align 16
@.tmr.1184 = private unnamed_addr constant [54 x i8] c"androidx/recyclerview/widget/ItemTouchHelper$Callback\00", align 16
@.tmr.1185 = private unnamed_addr constant [49 x i8] c"androidx/recyclerview/widget/LinearLayoutManager\00", align 16
@.tmr.1186 = private unnamed_addr constant [50 x i8] c"androidx/recyclerview/widget/LinearSmoothScroller\00", align 16
@.tmr.1187 = private unnamed_addr constant [46 x i8] c"androidx/recyclerview/widget/LinearSnapHelper\00", align 16
@.tmr.1188 = private unnamed_addr constant [47 x i8] c"androidx/recyclerview/widget/OrientationHelper\00", align 16
@.tmr.1189 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/PagerSnapHelper\00", align 16
@.tmr.1190 = private unnamed_addr constant [42 x i8] c"androidx/recyclerview/widget/RecyclerView\00", align 16
@.tmr.1191 = private unnamed_addr constant [50 x i8] c"androidx/recyclerview/widget/RecyclerView$Adapter\00", align 16
@.tmr.1192 = private unnamed_addr constant [73 x i8] c"androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy\00", align 16
@.tmr.1193 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/RecyclerView$AdapterDataObserver\00", align 16
@.tmr.1194 = private unnamed_addr constant [68 x i8] c"androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback\00", align 16
@.tmr.1195 = private unnamed_addr constant [60 x i8] c"androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory\00", align 16
@.tmr.1196 = private unnamed_addr constant [55 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator\00", align 16
@.tmr.1197 = private unnamed_addr constant [84 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener\00", align 16
@.tmr.1198 = private unnamed_addr constant [70 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo\00", align 16
@.tmr.1199 = private unnamed_addr constant [57 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemDecoration\00", align 16
@.tmr.1200 = private unnamed_addr constant [56 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager\00", align 16
@.tmr.1201 = private unnamed_addr constant [79 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry\00", align 16
@.tmr.1202 = private unnamed_addr constant [67 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties\00", align 16
@.tmr.1203 = private unnamed_addr constant [55 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutParams\00", align 16
@.tmr.1204 = private unnamed_addr constant [75 x i8] c"androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener\00", align 16
@.tmr.1205 = private unnamed_addr constant [91 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor\00", align 16
@.tmr.1206 = private unnamed_addr constant [58 x i8] c"androidx/recyclerview/widget/RecyclerView$OnFlingListener\00", align 16
@.tmr.1207 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/RecyclerView$OnItemTouchListener\00", align 16
@.tmr.1208 = private unnamed_addr constant [78 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor\00", align 16
@.tmr.1209 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$OnScrollListener\00", align 16
@.tmr.1210 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$RecycledViewPool\00", align 16
@.tmr.1211 = private unnamed_addr constant [51 x i8] c"androidx/recyclerview/widget/RecyclerView$Recycler\00", align 16
@.tmr.1212 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$RecyclerListener\00", align 16
@.tmr.1213 = private unnamed_addr constant [75 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor\00", align 16
@.tmr.1214 = private unnamed_addr constant [57 x i8] c"androidx/recyclerview/widget/RecyclerView$SmoothScroller\00", align 16
@.tmr.1215 = private unnamed_addr constant [64 x i8] c"androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action\00", align 16
@.tmr.1216 = private unnamed_addr constant [48 x i8] c"androidx/recyclerview/widget/RecyclerView$State\00", align 16
@.tmr.1217 = private unnamed_addr constant [61 x i8] c"androidx/recyclerview/widget/RecyclerView$ViewCacheExtension\00", align 16
@.tmr.1218 = private unnamed_addr constant [53 x i8] c"androidx/recyclerview/widget/RecyclerView$ViewHolder\00", align 16
@.tmr.1219 = private unnamed_addr constant [63 x i8] c"androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate\00", align 16
@.tmr.1220 = private unnamed_addr constant [40 x i8] c"androidx/recyclerview/widget/SnapHelper\00", align 16
@.tmr.1221 = private unnamed_addr constant [39 x i8] c"androidx/fragment/app/FragmentActivity\00", align 16
@.tmr.1222 = private unnamed_addr constant [37 x i8] c"androidx/fragment/app/DialogFragment\00", align 16
@.tmr.1223 = private unnamed_addr constant [31 x i8] c"androidx/fragment/app/Fragment\00", align 16
@.tmr.1224 = private unnamed_addr constant [42 x i8] c"androidx/fragment/app/Fragment$SavedState\00", align 16
@.tmr.1225 = private unnamed_addr constant [40 x i8] c"androidx/fragment/app/FragmentContainer\00", align 16
@.tmr.1226 = private unnamed_addr constant [44 x i8] c"androidx/fragment/app/FragmentContainerView\00", align 16
@.tmr.1227 = private unnamed_addr constant [38 x i8] c"androidx/fragment/app/FragmentFactory\00", align 16
@.tmr.1228 = private unnamed_addr constant [43 x i8] c"androidx/fragment/app/FragmentHostCallback\00", align 16
@.tmr.1229 = private unnamed_addr constant [38 x i8] c"androidx/fragment/app/FragmentManager\00", align 16
@.tmr.1230 = private unnamed_addr constant [53 x i8] c"androidx/fragment/app/FragmentManager$BackStackEntry\00", align 16
@.tmr.1231 = private unnamed_addr constant [65 x i8] c"androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks\00", align 16
@.tmr.1232 = private unnamed_addr constant [65 x i8] c"androidx/fragment/app/FragmentManager$OnBackStackChangedListener\00", align 16
@.tmr.1233 = private unnamed_addr constant [81 x i8] c"mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor\00", align 16
@.tmr.1234 = private unnamed_addr constant [42 x i8] c"androidx/fragment/app/FragmentTransaction\00", align 16
@.tmr.1235 = private unnamed_addr constant [47 x i8] c"androidx/fragment/app/FragmentOnAttachListener\00", align 16
@.tmr.1236 = private unnamed_addr constant [63 x i8] c"mono/androidx/fragment/app/FragmentOnAttachListenerImplementor\00", align 16
@.tmr.1237 = private unnamed_addr constant [45 x i8] c"androidx/fragment/app/FragmentResultListener\00", align 16
@.tmr.1238 = private unnamed_addr constant [52 x i8] c"androidx/fragment/app/strictmode/FragmentStrictMode\00", align 16
@.tmr.1239 = private unnamed_addr constant [59 x i8] c"androidx/fragment/app/strictmode/FragmentStrictMode$Policy\00", align 16
@.tmr.1240 = private unnamed_addr constant [43 x i8] c"androidx/fragment/app/strictmode/Violation\00", align 16
@.tmr.1241 = private unnamed_addr constant [38 x i8] c"androidx/collection/SparseArrayCompat\00", align 16
@.tmr.1242 = private unnamed_addr constant [34 x i8] c"com/google/android/gms/tasks/Task\00", align 16
@.tmr.1243 = private unnamed_addr constant [50 x i8] c"com/google/android/gms/tasks/TaskCompletionSource\00", align 16
@.tmr.1244 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/tasks/CancellationToken\00", align 16
@.tmr.1245 = private unnamed_addr constant [42 x i8] c"com/google/android/gms/tasks/Continuation\00", align 16
@.tmr.1246 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/tasks/OnCanceledListener\00", align 16
@.tmr.1247 = private unnamed_addr constant [48 x i8] c"com/google/android/gms/tasks/OnCompleteListener\00", align 16
@.tmr.1248 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/tasks/OnFailureListener\00", align 16
@.tmr.1249 = private unnamed_addr constant [47 x i8] c"com/google/android/gms/tasks/OnSuccessListener\00", align 16
@.tmr.1250 = private unnamed_addr constant [53 x i8] c"com/google/android/gms/tasks/OnTokenCanceledListener\00", align 16
@.tmr.1251 = private unnamed_addr constant [49 x i8] c"com/google/android/gms/tasks/SuccessContinuation\00", align 16
@.tmr.1252 = private unnamed_addr constant [54 x i8] c"crc6495d4f5d63cc5c882/AwaitableTaskCompleteListener_1\00", align 16
@.tmr.1253 = private unnamed_addr constant [39 x i8] c"androidx/savedstate/SavedStateRegistry\00", align 16
@.tmr.1254 = private unnamed_addr constant [58 x i8] c"androidx/savedstate/SavedStateRegistry$SavedStateProvider\00", align 16
@.tmr.1255 = private unnamed_addr constant [50 x i8] c"androidx/appcompat/content/res/AppCompatResources\00", align 16
@.tmr.1256 = private unnamed_addr constant [59 x i8] c"androidx/appcompat/graphics/drawable/DrawableWrapperCompat\00", align 16
@.tmr.1257 = private unnamed_addr constant [55 x i8] c"androidx/versionedparcelable/CustomVersionedParcelable\00", align 16
@.tmr.1258 = private unnamed_addr constant [16 x i8] c"kotlin/Function\00", align 16
@.tmr.1259 = private unnamed_addr constant [26 x i8] c"kotlin/sequences/Sequence\00", align 16
@.tmr.1260 = private unnamed_addr constant [33 x i8] c"kotlin/reflect/KAnnotatedElement\00", align 16
@.tmr.1261 = private unnamed_addr constant [25 x i8] c"kotlin/reflect/KCallable\00", align 16
@.tmr.1262 = private unnamed_addr constant [22 x i8] c"kotlin/reflect/KClass\00", align 16
@.tmr.1263 = private unnamed_addr constant [27 x i8] c"kotlin/reflect/KClassifier\00", align 16
@.tmr.1264 = private unnamed_addr constant [37 x i8] c"kotlin/reflect/KDeclarationContainer\00", align 16
@.tmr.1265 = private unnamed_addr constant [25 x i8] c"kotlin/reflect/KFunction\00", align 16
@.tmr.1266 = private unnamed_addr constant [31 x i8] c"kotlin/reflect/KParameter$Kind\00", align 16
@.tmr.1267 = private unnamed_addr constant [26 x i8] c"kotlin/reflect/KParameter\00", align 16
@.tmr.1268 = private unnamed_addr constant [21 x i8] c"kotlin/reflect/KType\00", align 16
@.tmr.1269 = private unnamed_addr constant [30 x i8] c"kotlin/reflect/KTypeParameter\00", align 16
@.tmr.1270 = private unnamed_addr constant [31 x i8] c"kotlin/reflect/KTypeProjection\00", align 16
@.tmr.1271 = private unnamed_addr constant [41 x i8] c"kotlin/reflect/KTypeProjection$Companion\00", align 16
@.tmr.1272 = private unnamed_addr constant [25 x i8] c"kotlin/reflect/KVariance\00", align 16
@.tmr.1273 = private unnamed_addr constant [27 x i8] c"kotlin/reflect/KVisibility\00", align 16
@.tmr.1274 = private unnamed_addr constant [42 x i8] c"kotlin/jvm/internal/markers/KMappedMarker\00", align 16
@.tmr.1275 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function0\00", align 16
@.tmr.1276 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function1\00", align 16
@.tmr.1277 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function2\00", align 16
@.tmr.1278 = private unnamed_addr constant [25 x i8] c"kotlin/enums/EnumEntries\00", align 16
@.tmr.1279 = private unnamed_addr constant [31 x i8] c"kotlin/coroutines/Continuation\00", align 16
@.tmr.1280 = private unnamed_addr constant [39 x i8] c"kotlin/coroutines/CoroutineContext$Key\00", align 16
@.tmr.1281 = private unnamed_addr constant [35 x i8] c"kotlin/coroutines/CoroutineContext\00", align 16
@.tmr.1282 = private unnamed_addr constant [38 x i8] c"androidx/viewpager2/widget/ViewPager2\00", align 16
@.tmr.1283 = private unnamed_addr constant [59 x i8] c"androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback\00", align 16
@.tmr.1284 = private unnamed_addr constant [54 x i8] c"androidx/viewpager2/widget/ViewPager2$PageTransformer\00", align 16
@.tmr.1285 = private unnamed_addr constant [49 x i8] c"androidx/viewpager2/adapter/FragmentStateAdapter\00", align 16
@.tmr.1286 = private unnamed_addr constant [77 x i8] c"androidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback\00", align 16
@.tmr.1287 = private unnamed_addr constant [97 x i8] c"androidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener\00", align 16
@.tmr.1288 = private unnamed_addr constant [47 x i8] c"androidx/viewpager2/adapter/FragmentViewHolder\00", align 16
@.tmr.1289 = private unnamed_addr constant [42 x i8] c"androidx/drawerlayout/widget/DrawerLayout\00", align 16
@.tmr.1290 = private unnamed_addr constant [57 x i8] c"androidx/drawerlayout/widget/DrawerLayout$DrawerListener\00", align 16
@.tmr.1291 = private unnamed_addr constant [73 x i8] c"mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor\00", align 16
@.tmr.1292 = private unnamed_addr constant [55 x i8] c"androidx/drawerlayout/widget/DrawerLayout$LayoutParams\00", align 16
@.tmr.1293 = private unnamed_addr constant [28 x i8] c"androidx/core/util/Consumer\00", align 16
@.tmr.1294 = private unnamed_addr constant [29 x i8] c"androidx/core/util/Predicate\00", align 16
@.tmr.1295 = private unnamed_addr constant [24 x i8] c"androidx/core/util/Pair\00", align 16
@.tmr.1296 = private unnamed_addr constant [34 x i8] c"androidx/core/os/LocaleListCompat\00", align 16
@.tmr.1297 = private unnamed_addr constant [44 x i8] c"androidx/core/internal/view/SupportMenuItem\00", align 16
@.tmr.1298 = private unnamed_addr constant [34 x i8] c"androidx/core/graphics/ColorUtils\00", align 16
@.tmr.1299 = private unnamed_addr constant [30 x i8] c"androidx/core/graphics/Insets\00", align 16
@.tmr.1300 = private unnamed_addr constant [47 x i8] c"androidx/core/graphics/drawable/DrawableCompat\00", align 16
@.tmr.1301 = private unnamed_addr constant [43 x i8] c"androidx/core/graphics/drawable/IconCompat\00", align 16
@.tmr.1302 = private unnamed_addr constant [36 x i8] c"androidx/core/content/ContextCompat\00", align 16
@.tmr.1303 = private unnamed_addr constant [35 x i8] c"androidx/core/content/FileProvider\00", align 16
@.tmr.1304 = private unnamed_addr constant [36 x i8] c"androidx/core/content/LocusIdCompat\00", align 16
@.tmr.1305 = private unnamed_addr constant [40 x i8] c"androidx/core/content/PermissionChecker\00", align 16
@.tmr.1306 = private unnamed_addr constant [43 x i8] c"androidx/core/content/pm/PackageInfoCompat\00", align 16
@.tmr.1307 = private unnamed_addr constant [44 x i8] c"androidx/core/content/pm/ShortcutInfoCompat\00", align 16
@.tmr.1308 = private unnamed_addr constant [33 x i8] c"androidx/core/app/ActivityCompat\00", align 16
@.tmr.1309 = private unnamed_addr constant [58 x i8] c"androidx/core/app/ActivityCompat$PermissionCompatDelegate\00", align 16
@.tmr.1310 = private unnamed_addr constant [40 x i8] c"androidx/core/app/ActivityOptionsCompat\00", align 16
@.tmr.1311 = private unnamed_addr constant [36 x i8] c"androidx/core/app/ComponentActivity\00", align 16
@.tmr.1312 = private unnamed_addr constant [46 x i8] c"androidx/core/app/ComponentActivity$ExtraData\00", align 16
@.tmr.1313 = private unnamed_addr constant [57 x i8] c"androidx/core/app/NotificationBuilderWithBuilderAccessor\00", align 16
@.tmr.1314 = private unnamed_addr constant [37 x i8] c"androidx/core/app/NotificationCompat\00", align 16
@.tmr.1315 = private unnamed_addr constant [44 x i8] c"androidx/core/app/NotificationCompat$Action\00", align 16
@.tmr.1316 = private unnamed_addr constant [53 x i8] c"androidx/core/app/NotificationCompat$BigPictureStyle\00", align 16
@.tmr.1317 = private unnamed_addr constant [50 x i8] c"androidx/core/app/NotificationCompat$BigTextStyle\00", align 16
@.tmr.1318 = private unnamed_addr constant [52 x i8] c"androidx/core/app/NotificationCompat$BubbleMetadata\00", align 16
@.tmr.1319 = private unnamed_addr constant [45 x i8] c"androidx/core/app/NotificationCompat$Builder\00", align 16
@.tmr.1320 = private unnamed_addr constant [46 x i8] c"androidx/core/app/NotificationCompat$Extender\00", align 16
@.tmr.1321 = private unnamed_addr constant [43 x i8] c"androidx/core/app/NotificationCompat$Style\00", align 16
@.tmr.1322 = private unnamed_addr constant [25 x i8] c"androidx/core/app/Person\00", align 16
@.tmr.1323 = private unnamed_addr constant [33 x i8] c"androidx/core/app/Person$Builder\00", align 16
@.tmr.1324 = private unnamed_addr constant [30 x i8] c"androidx/core/app/RemoteInput\00", align 16
@.tmr.1325 = private unnamed_addr constant [40 x i8] c"androidx/core/app/SharedElementCallback\00", align 16
@.tmr.1326 = private unnamed_addr constant [70 x i8] c"androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener\00", align 16
@.tmr.1327 = private unnamed_addr constant [35 x i8] c"androidx/core/app/TaskStackBuilder\00", align 16
@.tmr.1328 = private unnamed_addr constant [38 x i8] c"androidx/core/widget/NestedScrollView\00", align 16
@.tmr.1329 = private unnamed_addr constant [61 x i8] c"androidx/core/widget/NestedScrollView$OnScrollChangeListener\00", align 16
@.tmr.1330 = private unnamed_addr constant [77 x i8] c"mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor\00", align 16
@.tmr.1331 = private unnamed_addr constant [42 x i8] c"androidx/core/widget/CompoundButtonCompat\00", align 16
@.tmr.1332 = private unnamed_addr constant [36 x i8] c"androidx/core/widget/TextViewCompat\00", align 16
@.tmr.1333 = private unnamed_addr constant [47 x i8] c"androidx/core/view/AccessibilityDelegateCompat\00", align 16
@.tmr.1334 = private unnamed_addr constant [34 x i8] c"androidx/core/view/ActionProvider\00", align 16
@.tmr.1335 = private unnamed_addr constant [58 x i8] c"androidx/core/view/ActionProvider$SubUiVisibilityListener\00", align 16
@.tmr.1336 = private unnamed_addr constant [74 x i8] c"mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor\00", align 16
@.tmr.1337 = private unnamed_addr constant [53 x i8] c"androidx/core/view/ActionProvider$VisibilityListener\00", align 16
@.tmr.1338 = private unnamed_addr constant [69 x i8] c"mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor\00", align 16
@.tmr.1339 = private unnamed_addr constant [37 x i8] c"androidx/core/view/ContentInfoCompat\00", align 16
@.tmr.1340 = private unnamed_addr constant [39 x i8] c"androidx/core/view/DisplayCutoutCompat\00", align 16
@.tmr.1341 = private unnamed_addr constant [48 x i8] c"androidx/core/view/DragAndDropPermissionsCompat\00", align 16
@.tmr.1342 = private unnamed_addr constant [32 x i8] c"androidx/core/view/MenuProvider\00", align 16
@.tmr.1343 = private unnamed_addr constant [47 x i8] c"androidx/core/view/OnApplyWindowInsetsListener\00", align 16
@.tmr.1344 = private unnamed_addr constant [44 x i8] c"androidx/core/view/OnReceiveContentListener\00", align 16
@.tmr.1345 = private unnamed_addr constant [33 x i8] c"androidx/core/view/ScrollingView\00", align 16
@.tmr.1346 = private unnamed_addr constant [48 x i8] c"androidx/core/view/ViewPropertyAnimatorListener\00", align 16
@.tmr.1347 = private unnamed_addr constant [54 x i8] c"androidx/core/view/ViewPropertyAnimatorUpdateListener\00", align 16
@.tmr.1348 = private unnamed_addr constant [62 x i8] c"androidx/core/view/WindowInsetsAnimationControlListenerCompat\00", align 16
@.tmr.1349 = private unnamed_addr constant [34 x i8] c"androidx/core/view/MenuItemCompat\00", align 16
@.tmr.1350 = private unnamed_addr constant [57 x i8] c"androidx/core/view/MenuItemCompat$OnActionExpandListener\00", align 16
@.tmr.1351 = private unnamed_addr constant [37 x i8] c"androidx/core/view/PointerIconCompat\00", align 16
@.tmr.1352 = private unnamed_addr constant [46 x i8] c"androidx/core/view/ScaleGestureDetectorCompat\00", align 16
@.tmr.1353 = private unnamed_addr constant [30 x i8] c"androidx/core/view/ViewCompat\00", align 16
@.tmr.1354 = private unnamed_addr constant [64 x i8] c"androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat\00", align 16
@.tmr.1355 = private unnamed_addr constant [35 x i8] c"androidx/core/view/ViewGroupCompat\00", align 16
@.tmr.1356 = private unnamed_addr constant [46 x i8] c"androidx/core/view/ViewPropertyAnimatorCompat\00", align 16
@.tmr.1357 = private unnamed_addr constant [39 x i8] c"androidx/core/view/ViewStructureCompat\00", align 16
@.tmr.1358 = private unnamed_addr constant [32 x i8] c"androidx/core/view/WindowCompat\00", align 16
@.tmr.1359 = private unnamed_addr constant [47 x i8] c"androidx/core/view/WindowInsetsAnimationCompat\00", align 16
@.tmr.1360 = private unnamed_addr constant [60 x i8] c"androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat\00", align 16
@.tmr.1361 = private unnamed_addr constant [56 x i8] c"androidx/core/view/WindowInsetsAnimationCompat$Callback\00", align 16
@.tmr.1362 = private unnamed_addr constant [57 x i8] c"androidx/core/view/WindowInsetsAnimationControllerCompat\00", align 16
@.tmr.1363 = private unnamed_addr constant [38 x i8] c"androidx/core/view/WindowInsetsCompat\00", align 16
@.tmr.1364 = private unnamed_addr constant [46 x i8] c"androidx/core/view/WindowInsetsCompat$Builder\00", align 16
@.tmr.1365 = private unnamed_addr constant [43 x i8] c"androidx/core/view/WindowInsetsCompat$Type\00", align 16
@.tmr.1366 = private unnamed_addr constant [48 x i8] c"androidx/core/view/WindowInsetsControllerCompat\00", align 16
@.tmr.1367 = private unnamed_addr constant [84 x i8] c"androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener\00", align 16
@.tmr.1368 = private unnamed_addr constant [100 x i8] c"mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor\00", align 16
@.tmr.1369 = private unnamed_addr constant [62 x i8] c"androidx/core/view/contentcapture/ContentCaptureSessionCompat\00", align 16
@.tmr.1370 = private unnamed_addr constant [45 x i8] c"androidx/core/view/autofill/AutofillIdCompat\00", align 16
@.tmr.1371 = private unnamed_addr constant [61 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat\00", align 16
@.tmr.1372 = private unnamed_addr constant [87 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat\00", align 16
@.tmr.1373 = private unnamed_addr constant [82 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat\00", align 16
@.tmr.1374 = private unnamed_addr constant [86 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat\00", align 16
@.tmr.1375 = private unnamed_addr constant [77 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat\00", align 16
@.tmr.1376 = private unnamed_addr constant [85 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat\00", align 16
@.tmr.1377 = private unnamed_addr constant [65 x i8] c"androidx/core/view/accessibility/AccessibilityNodeProviderCompat\00", align 16
@.tmr.1378 = private unnamed_addr constant [63 x i8] c"androidx/core/view/accessibility/AccessibilityWindowInfoCompat\00", align 16
@.tmr.1379 = private unnamed_addr constant [75 x i8] c"androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments\00", align 16
@.tmr.1380 = private unnamed_addr constant [58 x i8] c"androidx/core/view/accessibility/AccessibilityViewCommand\00", align 16
@.tmr.1381 = private unnamed_addr constant [41 x i8] c"androidx/core/text/PrecomputedTextCompat\00", align 16
@.tmr.1382 = private unnamed_addr constant [48 x i8] c"androidx/core/text/PrecomputedTextCompat$Params\00", align 16
@.tmr.1383 = private unnamed_addr constant [59 x i8] c"plugin/LocalNotification/GeofenceTransitionsIntentReceiver\00", align 16
@.tmr.1384 = private unnamed_addr constant [52 x i8] c"plugin/LocalNotification/NotificationActionReceiver\00", align 16
@.tmr.1385 = private unnamed_addr constant [48 x i8] c"plugin/LocalNotification/ScheduledAlarmReceiver\00", align 16

;TypeMapModule
@.TypeMapModule.0_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.GooglePlayServices.Base\00", align 16
@.TypeMapModule.1_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.Google.Android.Material\00", align 16
@.TypeMapModule.2_assembly_name = private unnamed_addr constant [37 x i8] c"Xamarin.AndroidX.Navigation.Fragment\00", align 16
@.TypeMapModule.3_assembly_name = private unnamed_addr constant [43 x i8] c"Xamarin.AndroidX.Navigation.Common.Android\00", align 16
@.TypeMapModule.4_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.AndroidX.SwipeRefreshLayout\00", align 16
@.TypeMapModule.5_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.Navigation.UI\00", align 16
@.TypeMapModule.6_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.GooglePlayServices.Basement\00", align 16
@.TypeMapModule.7_assembly_name = private unnamed_addr constant [24 x i8] c"Microsoft.Maui.Graphics\00", align 16
@.TypeMapModule.8_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.CursorAdapter\00", align 16
@.TypeMapModule.9_assembly_name = private unnamed_addr constant [45 x i8] c"Xamarin.AndroidX.Lifecycle.ViewModel.Android\00", align 16
@.TypeMapModule.10_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.CardView\00", align 16
@.TypeMapModule.11_assembly_name = private unnamed_addr constant [15 x i8] c"Microsoft.Maui\00", align 1
@.TypeMapModule.12_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.Activity\00", align 16
@.TypeMapModule.13_assembly_name = private unnamed_addr constant [24 x i8] c"Xamarin.AndroidX.Loader\00", align 16
@.TypeMapModule.14_assembly_name = private unnamed_addr constant [41 x i8] c"Xamarin.AndroidX.Lifecycle.LiveData.Core\00", align 16
@.TypeMapModule.15_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.GooglePlayServices.Location\00", align 16
@.TypeMapModule.16_assembly_name = private unnamed_addr constant [44 x i8] c"Xamarin.AndroidX.Navigation.Runtime.Android\00", align 16
@.TypeMapModule.17_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.CustomView\00", align 16
@.TypeMapModule.18_assembly_name = private unnamed_addr constant [13 x i8] c"Java.Interop\00", align 1
@.TypeMapModule.19_assembly_name = private unnamed_addr constant [26 x i8] c"Microsoft.Maui.Essentials\00", align 16
@.TypeMapModule.20_assembly_name = private unnamed_addr constant [24 x i8] c"Microsoft.Maui.Controls\00", align 16
@.TypeMapModule.21_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.AppCompat\00", align 16
@.TypeMapModule.22_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.ViewPager\00", align 16
@.TypeMapModule.23_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.CoordinatorLayout\00", align 16
@.TypeMapModule.24_assembly_name = private unnamed_addr constant [38 x i8] c"Xamarin.AndroidX.Lifecycle.Common.Jvm\00", align 16
@.TypeMapModule.25_assembly_name = private unnamed_addr constant [20 x i8] c"Microsoft.Maui.Maps\00", align 16
@.TypeMapModule.26_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.KotlinX.Coroutines.Core.Jvm\00", align 16
@.TypeMapModule.27_assembly_name = private unnamed_addr constant [39 x i8] c"Xamarin.KotlinX.Serialization.Core.Jvm\00", align 16
@.TypeMapModule.28_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.GooglePlayServices.Maps\00", align 16
@.TypeMapModule.29_assembly_name = private unnamed_addr constant [15 x i8] c"SmartScheduler\00", align 1
@.TypeMapModule.30_assembly_name = private unnamed_addr constant [55 x i8] c"Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android\00", align 16
@.TypeMapModule.31_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.RecyclerView\00", align 16
@.TypeMapModule.32_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.Fragment\00", align 16
@.TypeMapModule.33_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.AndroidX.Collection.Jvm\00", align 16
@.TypeMapModule.34_assembly_name = private unnamed_addr constant [33 x i8] c"Xamarin.GooglePlayServices.Tasks\00", align 16
@.TypeMapModule.35_assembly_name = private unnamed_addr constant [47 x i8] c"Xamarin.AndroidX.SavedState.SavedState.Android\00", align 16
@.TypeMapModule.36_assembly_name = private unnamed_addr constant [46 x i8] c"Xamarin.AndroidX.AppCompat.AppCompatResources\00", align 16
@.TypeMapModule.37_assembly_name = private unnamed_addr constant [37 x i8] c"Xamarin.AndroidX.VersionedParcelable\00", align 16
@.TypeMapModule.38_assembly_name = private unnamed_addr constant [22 x i8] c"Xamarin.Kotlin.StdLib\00", align 16
@.TypeMapModule.39_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.ViewPager2\00", align 16
@.TypeMapModule.40_assembly_name = private unnamed_addr constant [13 x i8] c"Mono.Android\00", align 1
@.TypeMapModule.41_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.DrawerLayout\00", align 16
@.TypeMapModule.42_assembly_name = private unnamed_addr constant [22 x i8] c"Xamarin.AndroidX.Core\00", align 16
@.TypeMapModule.43_assembly_name = private unnamed_addr constant [25 x i8] c"Plugin.LocalNotification\00", align 16

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/10.0.1xx @ 9a2d211ba972d3a0c4c108e043def432f3ec2620"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
