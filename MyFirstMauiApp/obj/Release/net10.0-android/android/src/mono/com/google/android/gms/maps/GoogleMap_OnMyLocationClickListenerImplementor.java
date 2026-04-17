package mono.com.google.android.gms.maps;


public class GoogleMap_OnMyLocationClickListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.google.android.gms.maps.GoogleMap.OnMyLocationClickListener
{

	public GoogleMap_OnMyLocationClickListenerImplementor ()
	{
		super ();
		if (getClass () == GoogleMap_OnMyLocationClickListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Android.Gms.Maps.GoogleMap+IOnMyLocationClickListenerImplementor, Xamarin.GooglePlayServices.Maps", "", this, new java.lang.Object[] {  });
		}
	}

	public void onMyLocationClick (android.location.Location p0)
	{
		n_onMyLocationClick (p0);
	}

	private native void n_onMyLocationClick (android.location.Location p0);

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
