package mono.com.google.android.gms.maps;


public class GoogleMap_OnIndoorStateChangeListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.google.android.gms.maps.GoogleMap.OnIndoorStateChangeListener
{

	public GoogleMap_OnIndoorStateChangeListenerImplementor ()
	{
		super ();
		if (getClass () == GoogleMap_OnIndoorStateChangeListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Android.Gms.Maps.GoogleMap+IOnIndoorStateChangeListenerImplementor, Xamarin.GooglePlayServices.Maps", "", this, new java.lang.Object[] {  });
		}
	}

	public void onIndoorBuildingFocused ()
	{
		n_onIndoorBuildingFocused ();
	}

	private native void n_onIndoorBuildingFocused ();

	public void onIndoorLevelActivated (com.google.android.gms.maps.model.IndoorBuilding p0)
	{
		n_onIndoorLevelActivated (p0);
	}

	private native void n_onIndoorLevelActivated (com.google.android.gms.maps.model.IndoorBuilding p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
