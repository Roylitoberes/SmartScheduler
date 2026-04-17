package mono.com.google.android.gms.maps;


public class GoogleMap_OnMapLongClickListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.google.android.gms.maps.GoogleMap.OnMapLongClickListener
{

	public GoogleMap_OnMapLongClickListenerImplementor ()
	{
		super ();
		if (getClass () == GoogleMap_OnMapLongClickListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Android.Gms.Maps.GoogleMap+IOnMapLongClickListenerImplementor, Xamarin.GooglePlayServices.Maps", "", this, new java.lang.Object[] {  });
		}
	}

	public void onMapLongClick (com.google.android.gms.maps.model.LatLng p0)
	{
		n_onMapLongClick (p0);
	}

	private native void n_onMapLongClick (com.google.android.gms.maps.model.LatLng p0);

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
