package mono.com.google.android.gms.maps;


public class GoogleMap_OnInfoWindowCloseListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.google.android.gms.maps.GoogleMap.OnInfoWindowCloseListener
{

	public GoogleMap_OnInfoWindowCloseListenerImplementor ()
	{
		super ();
		if (getClass () == GoogleMap_OnInfoWindowCloseListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Android.Gms.Maps.GoogleMap+IOnInfoWindowCloseListenerImplementor, Xamarin.GooglePlayServices.Maps", "", this, new java.lang.Object[] {  });
		}
	}

	public void onInfoWindowClose (com.google.android.gms.maps.model.Marker p0)
	{
		n_onInfoWindowClose (p0);
	}

	private native void n_onInfoWindowClose (com.google.android.gms.maps.model.Marker p0);

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
