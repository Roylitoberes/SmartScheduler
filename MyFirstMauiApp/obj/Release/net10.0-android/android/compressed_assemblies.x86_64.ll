; ModuleID = 'compressed_assemblies.x86_64.ll'
source_filename = "compressed_assemblies.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.CompressedAssemblyDescriptor = type {
	i32, ; uint32_t uncompressed_file_size
	i1, ; bool loaded
	i32 ; uint32_t buffer_offset
}

@compressed_assembly_count = dso_local local_unnamed_addr constant i32 198, align 4

@compressed_assembly_descriptors = dso_local local_unnamed_addr global [198 x %struct.CompressedAssemblyDescriptor] [
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 0; uint32_t buffer_offset
	}, ; 0: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15624; uint32_t buffer_offset
	}, ; 1: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31256; uint32_t buffer_offset
	}, ; 2: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 46880; uint32_t buffer_offset
	}, ; 3: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 62504; uint32_t buffer_offset
	}, ; 4: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 78136; uint32_t buffer_offset
	}, ; 5: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 93768; uint32_t buffer_offset
	}, ; 6: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 109400; uint32_t buffer_offset
	}, ; 7: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 125024; uint32_t buffer_offset
	}, ; 8: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 140648; uint32_t buffer_offset
	}, ; 9: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 156280; uint32_t buffer_offset
	}, ; 10: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 171904; uint32_t buffer_offset
	}, ; 11: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 187528; uint32_t buffer_offset
	}, ; 12: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 203152; uint32_t buffer_offset
	}, ; 13: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 218776; uint32_t buffer_offset
	}, ; 14: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 234400; uint32_t buffer_offset
	}, ; 15: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 250024; uint32_t buffer_offset
	}, ; 16: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 265648; uint32_t buffer_offset
	}, ; 17: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 281272; uint32_t buffer_offset
	}, ; 18: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 296904; uint32_t buffer_offset
	}, ; 19: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 312568; uint32_t buffer_offset
	}, ; 20: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 328192; uint32_t buffer_offset
	}, ; 21: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 343824; uint32_t buffer_offset
	}, ; 22: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 359456; uint32_t buffer_offset
	}, ; 23: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 375088; uint32_t buffer_offset
	}, ; 24: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 390760; uint32_t buffer_offset
	}, ; 25: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 406392; uint32_t buffer_offset
	}, ; 26: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 422056; uint32_t buffer_offset
	}, ; 27: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 437680; uint32_t buffer_offset
	}, ; 28: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 453304; uint32_t buffer_offset
	}, ; 29: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 468928; uint32_t buffer_offset
	}, ; 30: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 484552; uint32_t buffer_offset
	}, ; 31: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 500216; uint32_t buffer_offset
	}, ; 32: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 515840; uint32_t buffer_offset
	}, ; 33: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 6144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 531472; uint32_t buffer_offset
	}, ; 34: _Microsoft.Android.Resource.Designer
	%struct.CompressedAssemblyDescriptor {
		i32 10240, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 537616; uint32_t buffer_offset
	}, ; 35: CommunityToolkit.Mvvm
	%struct.CompressedAssemblyDescriptor {
		i32 80896, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 547856; uint32_t buffer_offset
	}, ; 36: Firebase.Auth
	%struct.CompressedAssemblyDescriptor {
		i32 91648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 628752; uint32_t buffer_offset
	}, ; 37: Firebase
	%struct.CompressedAssemblyDescriptor {
		i32 20992, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 720400; uint32_t buffer_offset
	}, ; 38: Firebase.Storage
	%struct.CompressedAssemblyDescriptor {
		i32 450048, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 741392; uint32_t buffer_offset
	}, ; 39: Google.Api.CommonProtos
	%struct.CompressedAssemblyDescriptor {
		i32 79872, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1191440; uint32_t buffer_offset
	}, ; 40: Google.Api.Gax
	%struct.CompressedAssemblyDescriptor {
		i32 204800, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1271312; uint32_t buffer_offset
	}, ; 41: Google.Api.Gax.Grpc
	%struct.CompressedAssemblyDescriptor {
		i32 84480, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1476112; uint32_t buffer_offset
	}, ; 42: Google.Apis
	%struct.CompressedAssemblyDescriptor {
		i32 246272, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1560592; uint32_t buffer_offset
	}, ; 43: Google.Apis.Auth
	%struct.CompressedAssemblyDescriptor {
		i32 107520, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1806864; uint32_t buffer_offset
	}, ; 44: Google.Apis.Calendar.v3
	%struct.CompressedAssemblyDescriptor {
		i32 86528, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1914384; uint32_t buffer_offset
	}, ; 45: Google.Apis.Core
	%struct.CompressedAssemblyDescriptor {
		i32 181760, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 2000912; uint32_t buffer_offset
	}, ; 46: Google.Cloud.Firestore
	%struct.CompressedAssemblyDescriptor {
		i32 335872, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 2182672; uint32_t buffer_offset
	}, ; 47: Google.Cloud.Firestore.V1
	%struct.CompressedAssemblyDescriptor {
		i32 35840, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 2518544; uint32_t buffer_offset
	}, ; 48: Google.Cloud.Location
	%struct.CompressedAssemblyDescriptor {
		i32 64512, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 2554384; uint32_t buffer_offset
	}, ; 49: Google.LongRunning
	%struct.CompressedAssemblyDescriptor {
		i32 398848, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 2618896; uint32_t buffer_offset
	}, ; 50: Google.Protobuf
	%struct.CompressedAssemblyDescriptor {
		i32 21600, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 3017744; uint32_t buffer_offset
	}, ; 51: Grpc.Auth
	%struct.CompressedAssemblyDescriptor {
		i32 70240, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 3039344; uint32_t buffer_offset
	}, ; 52: Grpc.Core.Api
	%struct.CompressedAssemblyDescriptor {
		i32 302080, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 3109584; uint32_t buffer_offset
	}, ; 53: Grpc.Net.Client
	%struct.CompressedAssemblyDescriptor {
		i32 6144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 3411664; uint32_t buffer_offset
	}, ; 54: Grpc.Net.Common
	%struct.CompressedAssemblyDescriptor {
		i32 488960, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 3417808; uint32_t buffer_offset
	}, ; 55: LiteDB
	%struct.CompressedAssemblyDescriptor {
		i32 6144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 3906768; uint32_t buffer_offset
	}, ; 56: Microsoft.Bcl.AsyncInterfaces
	%struct.CompressedAssemblyDescriptor {
		i32 14848, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 3912912; uint32_t buffer_offset
	}, ; 57: Microsoft.Extensions.Configuration
	%struct.CompressedAssemblyDescriptor {
		i32 6656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 3927760; uint32_t buffer_offset
	}, ; 58: Microsoft.Extensions.Configuration.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 46592, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 3934416; uint32_t buffer_offset
	}, ; 59: Microsoft.Extensions.DependencyInjection
	%struct.CompressedAssemblyDescriptor {
		i32 26112, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 3981008; uint32_t buffer_offset
	}, ; 60: Microsoft.Extensions.DependencyInjection.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 8192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 4007120; uint32_t buffer_offset
	}, ; 61: Microsoft.Extensions.Diagnostics.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 7168, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 4015312; uint32_t buffer_offset
	}, ; 62: Microsoft.Extensions.FileProviders.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 6144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 4022480; uint32_t buffer_offset
	}, ; 63: Microsoft.Extensions.Hosting.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 19456, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 4028624; uint32_t buffer_offset
	}, ; 64: Microsoft.Extensions.Logging
	%struct.CompressedAssemblyDescriptor {
		i32 32256, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 4048080; uint32_t buffer_offset
	}, ; 65: Microsoft.Extensions.Logging.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 16896, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 4080336; uint32_t buffer_offset
	}, ; 66: Microsoft.Extensions.Options
	%struct.CompressedAssemblyDescriptor {
		i32 9216, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 4097232; uint32_t buffer_offset
	}, ; 67: Microsoft.Extensions.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 1928504, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 4106448; uint32_t buffer_offset
	}, ; 68: Microsoft.Maui.Controls
	%struct.CompressedAssemblyDescriptor {
		i32 37128, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 6034952; uint32_t buffer_offset
	}, ; 69: Microsoft.Maui.Controls.Maps
	%struct.CompressedAssemblyDescriptor {
		i32 135432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 6072080; uint32_t buffer_offset
	}, ; 70: Microsoft.Maui.Controls.Xaml
	%struct.CompressedAssemblyDescriptor {
		i32 861696, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 6207512; uint32_t buffer_offset
	}, ; 71: Microsoft.Maui
	%struct.CompressedAssemblyDescriptor {
		i32 110080, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7069208; uint32_t buffer_offset
	}, ; 72: Microsoft.Maui.Essentials
	%struct.CompressedAssemblyDescriptor {
		i32 208696, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7179288; uint32_t buffer_offset
	}, ; 73: Microsoft.Maui.Graphics
	%struct.CompressedAssemblyDescriptor {
		i32 47376, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7387984; uint32_t buffer_offset
	}, ; 74: Microsoft.Maui.Maps
	%struct.CompressedAssemblyDescriptor {
		i32 723368, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7435360; uint32_t buffer_offset
	}, ; 75: Newtonsoft.Json
	%struct.CompressedAssemblyDescriptor {
		i32 143872, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8158728; uint32_t buffer_offset
	}, ; 76: Plugin.LocalNotification
	%struct.CompressedAssemblyDescriptor {
		i32 107520, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8302600; uint32_t buffer_offset
	}, ; 77: SQLite-net
	%struct.CompressedAssemblyDescriptor {
		i32 5632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8410120; uint32_t buffer_offset
	}, ; 78: SQLitePCLRaw.batteries_v2
	%struct.CompressedAssemblyDescriptor {
		i32 51200, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8415752; uint32_t buffer_offset
	}, ; 79: SQLitePCLRaw.core
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8466952; uint32_t buffer_offset
	}, ; 80: SQLitePCLRaw.lib.e_sqlite3.android
	%struct.CompressedAssemblyDescriptor {
		i32 36864, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8472072; uint32_t buffer_offset
	}, ; 81: SQLitePCLRaw.provider.e_sqlite3
	%struct.CompressedAssemblyDescriptor {
		i32 186496, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8508936; uint32_t buffer_offset
	}, ; 82: System.CodeDom
	%struct.CompressedAssemblyDescriptor {
		i32 8192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8695432; uint32_t buffer_offset
	}, ; 83: System.Management
	%struct.CompressedAssemblyDescriptor {
		i32 98304, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8703624; uint32_t buffer_offset
	}, ; 84: System.Reactive
	%struct.CompressedAssemblyDescriptor {
		i32 78848, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8801928; uint32_t buffer_offset
	}, ; 85: Xamarin.AndroidX.Activity
	%struct.CompressedAssemblyDescriptor {
		i32 583680, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8880776; uint32_t buffer_offset
	}, ; 86: Xamarin.AndroidX.AppCompat
	%struct.CompressedAssemblyDescriptor {
		i32 17920, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9464456; uint32_t buffer_offset
	}, ; 87: Xamarin.AndroidX.AppCompat.AppCompatResources
	%struct.CompressedAssemblyDescriptor {
		i32 18944, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9482376; uint32_t buffer_offset
	}, ; 88: Xamarin.AndroidX.CardView
	%struct.CompressedAssemblyDescriptor {
		i32 22528, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9501320; uint32_t buffer_offset
	}, ; 89: Xamarin.AndroidX.Collection.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 78336, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9523848; uint32_t buffer_offset
	}, ; 90: Xamarin.AndroidX.CoordinatorLayout
	%struct.CompressedAssemblyDescriptor {
		i32 794624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9602184; uint32_t buffer_offset
	}, ; 91: Xamarin.AndroidX.Core
	%struct.CompressedAssemblyDescriptor {
		i32 26624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10396808; uint32_t buffer_offset
	}, ; 92: Xamarin.AndroidX.CursorAdapter
	%struct.CompressedAssemblyDescriptor {
		i32 9728, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10423432; uint32_t buffer_offset
	}, ; 93: Xamarin.AndroidX.CustomView
	%struct.CompressedAssemblyDescriptor {
		i32 47104, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10433160; uint32_t buffer_offset
	}, ; 94: Xamarin.AndroidX.DrawerLayout
	%struct.CompressedAssemblyDescriptor {
		i32 236032, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10480264; uint32_t buffer_offset
	}, ; 95: Xamarin.AndroidX.Fragment
	%struct.CompressedAssemblyDescriptor {
		i32 23552, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10716296; uint32_t buffer_offset
	}, ; 96: Xamarin.AndroidX.Lifecycle.Common.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 18944, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10739848; uint32_t buffer_offset
	}, ; 97: Xamarin.AndroidX.Lifecycle.LiveData.Core
	%struct.CompressedAssemblyDescriptor {
		i32 32768, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10758792; uint32_t buffer_offset
	}, ; 98: Xamarin.AndroidX.Lifecycle.ViewModel.Android
	%struct.CompressedAssemblyDescriptor {
		i32 13824, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10791560; uint32_t buffer_offset
	}, ; 99: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android
	%struct.CompressedAssemblyDescriptor {
		i32 39424, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10805384; uint32_t buffer_offset
	}, ; 100: Xamarin.AndroidX.Loader
	%struct.CompressedAssemblyDescriptor {
		i32 92672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10844808; uint32_t buffer_offset
	}, ; 101: Xamarin.AndroidX.Navigation.Common.Android
	%struct.CompressedAssemblyDescriptor {
		i32 19456, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10937480; uint32_t buffer_offset
	}, ; 102: Xamarin.AndroidX.Navigation.Fragment
	%struct.CompressedAssemblyDescriptor {
		i32 65536, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10956936; uint32_t buffer_offset
	}, ; 103: Xamarin.AndroidX.Navigation.Runtime.Android
	%struct.CompressedAssemblyDescriptor {
		i32 27136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11022472; uint32_t buffer_offset
	}, ; 104: Xamarin.AndroidX.Navigation.UI
	%struct.CompressedAssemblyDescriptor {
		i32 457728, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11049608; uint32_t buffer_offset
	}, ; 105: Xamarin.AndroidX.RecyclerView
	%struct.CompressedAssemblyDescriptor {
		i32 12288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11507336; uint32_t buffer_offset
	}, ; 106: Xamarin.AndroidX.SavedState.SavedState.Android
	%struct.CompressedAssemblyDescriptor {
		i32 41984, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11519624; uint32_t buffer_offset
	}, ; 107: Xamarin.AndroidX.SwipeRefreshLayout
	%struct.CompressedAssemblyDescriptor {
		i32 9728, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11561608; uint32_t buffer_offset
	}, ; 108: Xamarin.AndroidX.VersionedParcelable
	%struct.CompressedAssemblyDescriptor {
		i32 62976, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11571336; uint32_t buffer_offset
	}, ; 109: Xamarin.AndroidX.ViewPager
	%struct.CompressedAssemblyDescriptor {
		i32 40448, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11634312; uint32_t buffer_offset
	}, ; 110: Xamarin.AndroidX.ViewPager2
	%struct.CompressedAssemblyDescriptor {
		i32 675840, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11674760; uint32_t buffer_offset
	}, ; 111: Xamarin.Google.Android.Material
	%struct.CompressedAssemblyDescriptor {
		i32 212992, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 12350600; uint32_t buffer_offset
	}, ; 112: Xamarin.GooglePlayServices.Base
	%struct.CompressedAssemblyDescriptor {
		i32 73728, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 12563592; uint32_t buffer_offset
	}, ; 113: Xamarin.GooglePlayServices.Basement
	%struct.CompressedAssemblyDescriptor {
		i32 134144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 12637320; uint32_t buffer_offset
	}, ; 114: Xamarin.GooglePlayServices.Location
	%struct.CompressedAssemblyDescriptor {
		i32 318464, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 12771464; uint32_t buffer_offset
	}, ; 115: Xamarin.GooglePlayServices.Maps
	%struct.CompressedAssemblyDescriptor {
		i32 52736, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13089928; uint32_t buffer_offset
	}, ; 116: Xamarin.GooglePlayServices.Tasks
	%struct.CompressedAssemblyDescriptor {
		i32 90624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13142664; uint32_t buffer_offset
	}, ; 117: Xamarin.Kotlin.StdLib
	%struct.CompressedAssemblyDescriptor {
		i32 28672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13233288; uint32_t buffer_offset
	}, ; 118: Xamarin.KotlinX.Coroutines.Core.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 91648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13261960; uint32_t buffer_offset
	}, ; 119: Xamarin.KotlinX.Serialization.Core.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 992256, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13353608; uint32_t buffer_offset
	}, ; 120: SmartScheduler
	%struct.CompressedAssemblyDescriptor {
		i32 255488, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14345864; uint32_t buffer_offset
	}, ; 121: Microsoft.CSharp
	%struct.CompressedAssemblyDescriptor {
		i32 34816, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14601352; uint32_t buffer_offset
	}, ; 122: System.Collections.Concurrent
	%struct.CompressedAssemblyDescriptor {
		i32 39424, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14636168; uint32_t buffer_offset
	}, ; 123: System.Collections.Immutable
	%struct.CompressedAssemblyDescriptor {
		i32 19456, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14675592; uint32_t buffer_offset
	}, ; 124: System.Collections.NonGeneric
	%struct.CompressedAssemblyDescriptor {
		i32 22016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14695048; uint32_t buffer_offset
	}, ; 125: System.Collections.Specialized
	%struct.CompressedAssemblyDescriptor {
		i32 65536, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14717064; uint32_t buffer_offset
	}, ; 126: System.Collections
	%struct.CompressedAssemblyDescriptor {
		i32 5632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14782600; uint32_t buffer_offset
	}, ; 127: System.ComponentModel.EventBasedAsync
	%struct.CompressedAssemblyDescriptor {
		i32 14336, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14788232; uint32_t buffer_offset
	}, ; 128: System.ComponentModel.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 144896, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14802568; uint32_t buffer_offset
	}, ; 129: System.ComponentModel.TypeConverter
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14947464; uint32_t buffer_offset
	}, ; 130: System.ComponentModel
	%struct.CompressedAssemblyDescriptor {
		i32 12288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14952584; uint32_t buffer_offset
	}, ; 131: System.Console
	%struct.CompressedAssemblyDescriptor {
		i32 520192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14964872; uint32_t buffer_offset
	}, ; 132: System.Data.Common
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15485064; uint32_t buffer_offset
	}, ; 133: System.Diagnostics.Debug
	%struct.CompressedAssemblyDescriptor {
		i32 54272, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15490184; uint32_t buffer_offset
	}, ; 134: System.Diagnostics.DiagnosticSource
	%struct.CompressedAssemblyDescriptor {
		i32 60928, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15544456; uint32_t buffer_offset
	}, ; 135: System.Diagnostics.Process
	%struct.CompressedAssemblyDescriptor {
		i32 19968, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15605384; uint32_t buffer_offset
	}, ; 136: System.Diagnostics.TraceSource
	%struct.CompressedAssemblyDescriptor {
		i32 36864, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15625352; uint32_t buffer_offset
	}, ; 137: System.Drawing.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15662216; uint32_t buffer_offset
	}, ; 138: System.Drawing
	%struct.CompressedAssemblyDescriptor {
		i32 62464, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15667336; uint32_t buffer_offset
	}, ; 139: System.Formats.Asn1
	%struct.CompressedAssemblyDescriptor {
		i32 22016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15729800; uint32_t buffer_offset
	}, ; 140: System.IO.Compression.Brotli
	%struct.CompressedAssemblyDescriptor {
		i32 33792, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15751816; uint32_t buffer_offset
	}, ; 141: System.IO.Compression
	%struct.CompressedAssemblyDescriptor {
		i32 6144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15785608; uint32_t buffer_offset
	}, ; 142: System.IO.Pipelines
	%struct.CompressedAssemblyDescriptor {
		i32 22528, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15791752; uint32_t buffer_offset
	}, ; 143: System.IO.Pipes
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15814280; uint32_t buffer_offset
	}, ; 144: System.IO
	%struct.CompressedAssemblyDescriptor {
		i32 13824, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15818888; uint32_t buffer_offset
	}, ; 145: System.Linq.AsyncEnumerable
	%struct.CompressedAssemblyDescriptor {
		i32 434688, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15832712; uint32_t buffer_offset
	}, ; 146: System.Linq.Expressions
	%struct.CompressedAssemblyDescriptor {
		i32 76800, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16267400; uint32_t buffer_offset
	}, ; 147: System.Linq
	%struct.CompressedAssemblyDescriptor {
		i32 16896, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16344200; uint32_t buffer_offset
	}, ; 148: System.Memory
	%struct.CompressedAssemblyDescriptor {
		i32 394240, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16361096; uint32_t buffer_offset
	}, ; 149: System.Net.Http
	%struct.CompressedAssemblyDescriptor {
		i32 66560, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16755336; uint32_t buffer_offset
	}, ; 150: System.Net.HttpListener
	%struct.CompressedAssemblyDescriptor {
		i32 117760, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16821896; uint32_t buffer_offset
	}, ; 151: System.Net.Mail
	%struct.CompressedAssemblyDescriptor {
		i32 28160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16939656; uint32_t buffer_offset
	}, ; 152: System.Net.NameResolution
	%struct.CompressedAssemblyDescriptor {
		i32 26112, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16967816; uint32_t buffer_offset
	}, ; 153: System.Net.NetworkInformation
	%struct.CompressedAssemblyDescriptor {
		i32 69120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16993928; uint32_t buffer_offset
	}, ; 154: System.Net.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 9728, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17063048; uint32_t buffer_offset
	}, ; 155: System.Net.Requests
	%struct.CompressedAssemblyDescriptor {
		i32 150528, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17072776; uint32_t buffer_offset
	}, ; 156: System.Net.Security
	%struct.CompressedAssemblyDescriptor {
		i32 115200, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17223304; uint32_t buffer_offset
	}, ; 157: System.Net.Sockets
	%struct.CompressedAssemblyDescriptor {
		i32 16896, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17338504; uint32_t buffer_offset
	}, ; 158: System.Net.WebHeaderCollection
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17355400; uint32_t buffer_offset
	}, ; 159: System.Numerics.Vectors
	%struct.CompressedAssemblyDescriptor {
		i32 20992, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17360520; uint32_t buffer_offset
	}, ; 160: System.ObjectModel
	%struct.CompressedAssemblyDescriptor {
		i32 77824, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17381512; uint32_t buffer_offset
	}, ; 161: System.Private.Uri
	%struct.CompressedAssemblyDescriptor {
		i32 45056, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17459336; uint32_t buffer_offset
	}, ; 162: System.Private.Xml.Linq
	%struct.CompressedAssemblyDescriptor {
		i32 1350656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17504392; uint32_t buffer_offset
	}, ; 163: System.Private.Xml
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18855048; uint32_t buffer_offset
	}, ; 164: System.Reflection.Emit.ILGeneration
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18860168; uint32_t buffer_offset
	}, ; 165: System.Reflection.Emit.Lightweight
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18865288; uint32_t buffer_offset
	}, ; 166: System.Reflection.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18870408; uint32_t buffer_offset
	}, ; 167: System.Runtime.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18875016; uint32_t buffer_offset
	}, ; 168: System.Runtime.InteropServices.RuntimeInformation
	%struct.CompressedAssemblyDescriptor {
		i32 9216, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18880136; uint32_t buffer_offset
	}, ; 169: System.Runtime.InteropServices
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18889352; uint32_t buffer_offset
	}, ; 170: System.Runtime.Loader
	%struct.CompressedAssemblyDescriptor {
		i32 96256, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18894472; uint32_t buffer_offset
	}, ; 171: System.Runtime.Numerics
	%struct.CompressedAssemblyDescriptor {
		i32 8192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18990728; uint32_t buffer_offset
	}, ; 172: System.Runtime.Serialization.Formatters
	%struct.CompressedAssemblyDescriptor {
		i32 6144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18998920; uint32_t buffer_offset
	}, ; 173: System.Runtime.Serialization.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 15872, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19005064; uint32_t buffer_offset
	}, ; 174: System.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 12800, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19020936; uint32_t buffer_offset
	}, ; 175: System.Security.Claims
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19033736; uint32_t buffer_offset
	}, ; 176: System.Security.Cryptography.Algorithms
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19038856; uint32_t buffer_offset
	}, ; 177: System.Security.Cryptography.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19043976; uint32_t buffer_offset
	}, ; 178: System.Security.Cryptography.X509Certificates
	%struct.CompressedAssemblyDescriptor {
		i32 262144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19049096; uint32_t buffer_offset
	}, ; 179: System.Security.Cryptography
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19311240; uint32_t buffer_offset
	}, ; 180: System.Text.Encoding.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 29696, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19316360; uint32_t buffer_offset
	}, ; 181: System.Text.Encodings.Web
	%struct.CompressedAssemblyDescriptor {
		i32 379904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19346056; uint32_t buffer_offset
	}, ; 182: System.Text.Json
	%struct.CompressedAssemblyDescriptor {
		i32 338432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19725960; uint32_t buffer_offset
	}, ; 183: System.Text.RegularExpressions
	%struct.CompressedAssemblyDescriptor {
		i32 24064, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20064392; uint32_t buffer_offset
	}, ; 184: System.Threading.Channels
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20088456; uint32_t buffer_offset
	}, ; 185: System.Threading.Tasks.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20093576; uint32_t buffer_offset
	}, ; 186: System.Threading.Tasks
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20098696; uint32_t buffer_offset
	}, ; 187: System.Threading.Thread
	%struct.CompressedAssemblyDescriptor {
		i32 12288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20103816; uint32_t buffer_offset
	}, ; 188: System.Threading
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20116104; uint32_t buffer_offset
	}, ; 189: System.Xml.Linq
	%struct.CompressedAssemblyDescriptor {
		i32 5632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20120712; uint32_t buffer_offset
	}, ; 190: System.Xml.ReaderWriter
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20126344; uint32_t buffer_offset
	}, ; 191: System.Xml.XDocument
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20131464; uint32_t buffer_offset
	}, ; 192: System
	%struct.CompressedAssemblyDescriptor {
		i32 15872, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20136584; uint32_t buffer_offset
	}, ; 193: netstandard
	%struct.CompressedAssemblyDescriptor {
		i32 2313728, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20152456; uint32_t buffer_offset
	}, ; 194: System.Private.CoreLib
	%struct.CompressedAssemblyDescriptor {
		i32 172032, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 22466184; uint32_t buffer_offset
	}, ; 195: Java.Interop
	%struct.CompressedAssemblyDescriptor {
		i32 22560, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 22638216; uint32_t buffer_offset
	}, ; 196: Mono.Android.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 2128896, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 22660776; uint32_t buffer_offset
	} ; 197: Mono.Android
], align 16

@uncompressed_assemblies_data_size = dso_local local_unnamed_addr constant i32 24789672, align 4

@uncompressed_assemblies_data_buffer = dso_local local_unnamed_addr global [24789672 x i8] zeroinitializer, align 16

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
